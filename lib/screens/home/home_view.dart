import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parametric_market_app/constants/constants.dart';
import 'package:parametric_market_app/models/tyre_model.dart';
import 'package:parametric_market_app/screens/home/home_controller.dart';

import '../../constants/text_styles.dart';

class HomeView extends StatelessWidget {
  final _controller = Get.find<HomeController>();
  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      
      child: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.add),),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Theme.of(context).primaryColor,
          title: Text("Offers"),
        ),
        body: ListView.builder(
          
          itemCount: _controller.tyresList.length,
          
          itemBuilder: (context,index){
final _tyreModel=_controller.tyresList[index];

          return addCard(_tyreModel);
        })
      ),
    );
  }

  Widget addCard(TyreModel tyreModel) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: ExpansionTile(
        subtitle: Text(tyreModel.type),

      
        leading: CircleAvatar(
            backgroundColor: Theme.of(Get.context!).primaryColor,
            radius: 30,
            child: Text(tyreModel.tyreWidth.toString())),
        title: Text(
          type.capitalizeFirst??"",
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 10.0,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  children: [
                    _addRow(type,tyreModel.type),
                    _addRow(rimWidth,tyreModel.wheel.rimWidth.toString()),
                         _addRow(rimDimeter,tyreModel.wheel.rimDimeter.toString()),
                    _addRow(rimOffset,tyreModel.wheel.rimOffset.toString()),
                    columSizedBox,

                    Container(child: Text(tyreModel.description??""),)
                    // Row(
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //   children: [
                    //     Column(
                    //       crossAxisAlignment: CrossAxisAlignment.start,
                    //       children: [
                    //         Text(
                    //           type,
                    //           style: StyledText.titleBolds,
                    //         ),
                    //         SizedBox(
                    //           height: 10,
                    //         ),
                    
                    //       ],
                    //     ),
                    //     Column(
                    //       crossAxisAlignment: CrossAxisAlignment.start,
                    //       children: [
                    //         Text(tyreModel.type),
                          
                      
                    //       ],
                    //     ),
                    //   ],
                    // ),
                    // Row(
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //   children: [
                    //     Column(
                    //       crossAxisAlignment: CrossAxisAlignment.start,
                    //       children: [
                    //         Text(
                    //           type,
                    //           style: StyledText.titleBolds,
                    //         ),
                    //         SizedBox(
                    //           height: 10,
                    //         ),
                    
                    //       ],
                    //     ),
                    //     Column(
                    //       crossAxisAlignment: CrossAxisAlignment.start,
                    //       children: [
                    //         Text(tyreModel.type),
                          
                      
                    //       ],
                    //     ),
                    //   ],
                    // ),
                    ,
                    ButtonBar(
                      children: [
                        IconButton(
                          onPressed: () {
                  
                          },
                          icon: Icon(Icons.edit),
                        ),
                        IconButton(
                          onPressed: () {
                            //show confirm dialogue delete entry
                         
                          },
                          icon: Icon(Icons.delete),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

_addRow(String title, String value){

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                title.capitalizeFirst??"",
                                style: StyledText.titleBolds,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                      
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(value),
                            
                        
                            ],
                          ),
                        ],
                      ),
  );
}
}
