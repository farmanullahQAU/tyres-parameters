import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:parametric_market_app/constants/constants.dart';
import 'package:parametric_market_app/constants/text_styles.dart';
import 'package:parametric_market_app/models/tyre_model.dart';

import '../home/home_controller.dart';

class SearchView extends StatelessWidget {
  final _controller = Get.find<HomeController>();



  @override
  Widget build(BuildContext context) {
   

   
    return Scaffold(
      appBar: AppBar(title: Text("ddd"),),
      body: 
         ListView.builder(
          padding: EdgeInsets.only(left: 4,top: 10),
          itemCount: _controller.tyresList.length,
          itemBuilder: (context,index){
      
      
          final _tyreModel=_controller.tyresList[index];
      
          return _addStack(_tyreModel,context);
        }),
      );
    
  }

Widget _addStack(TyreModel tyreModel,BuildContext context){

  return Stack(
        alignment: Alignment.centerLeft,

    children: [
            _addCard(tyreModel),
    
      _addFavouriteIcon(tyreModel),
            
            _addImageTumbnail(tyreModel.imageUrl??"images/mercury.png",context),

    ],
  );

}

_addFavouriteIcon(TyreModel model){
  final index=_controller.tyresList.indexOf(model);

  return Positioned(
    right:10,
    top: 8,
  
    child: 

     
      Obx(()=>
      IconButton(
            onPressed: (){
              model.wheel.isFavorite=!model.wheel.isFavorite;
       model.wheel.isFavorite?        BotToast.showText(text:"Added to favorite"):  BotToast.showText(text:"Removed from favorite");
      
      // BotToast.showCustomNotification(toastBuilder: (_){
      //   return Icon(Icons.face,color: Colors.red,);
      // });
              _controller.tyresList[index]=model;



            },
            icon:
            
            
             _controller.tyresList[index].wheel.isFavorite?
            
             Icon(Icons.favorite
              ,color: Theme.of(Get.context!).iconTheme.color,
              
            ):  Icon(Icons.favorite_border
              
              
            )
          ),
      ),
      
   
  );
}

_addCard(TyreModel tyreModel){

    return Container(
          height: 170,
          margin: EdgeInsets.only(left: 45),
          width: Get.width,

          child: Card(
             shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20.0),
  ),
            elevation: 10.0,
            child: Padding(
              padding: const EdgeInsets.only(left:50.0,bottom: 10,top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [

                  Text("Mint condition ${tyreModel.wheel.rimWidth} x ${tyreModel.wheel.rimDimeter} ${tyreModel.wheel.shortDescription??""}",style: StyledText.bodyLarge,),

                  Divider(
                    thickness: 2,endIndent: Get.width*0.1,),

                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Column(
                       
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [

                         //dimeter

   Row(
     
     
     children: [

                          Text('${dimeterHintText}:',style: StyledText.titleSmallGrey,),
                            eightWidthSizedBox,

                          Text(tyreModel.wheel.rimDimeter.toString(),style: StyledText.titleSmall.copyWith(fontWeight: FontWeight.bold),),

                        ],),

                        //rim width
                           Row(
                             
                             
                             
                             children: [

                          Text("${rimWidth}:",style: StyledText.titleSmallGrey),
                          eightWidthSizedBox,

                          Text(tyreModel.wheel.rimWidth.toString(),style: StyledText.titleSmall.copyWith(fontWeight: FontWeight.bold)),

                        ],),

                        //condition
                              Row(children: [

                          Text(condition,style: StyledText.titleSmallGrey),
                              eightWidthSizedBox,
                          Text(tyreModel.wheel.condition,style: StyledText.titleSmall.copyWith(fontWeight: FontWeight.bold)),

                        ],),





                     ],),

                     Padding(
                       padding: const EdgeInsets.only(right:50.0),
                       child: Text("${tyreModel.wheel.price} \$",style: StyledText.titleSmall.copyWith(
                         fontSize: 20,
                         
                         
                         fontWeight: FontWeight.bold)),
                     )
                   ],
                 ),

                 tenHeightSizedBox,

Expanded(child: Container(child: Text(tyreModel.description??"no description added"),))

                ],

//DESCRIPTION


          ),
            )),
         
        );
            
            
}

_addImageTumbnail(String imageUrl,BuildContext context){

 return Hero(
      tag: 'planet-icon-',
      child: CircleAvatar(
backgroundColor: Theme.of(context).dividerColor,
        radius: 43,
        child: CircleAvatar(
          radius: 40,
          
          child:Image.asset(imageUrl,fit: BoxFit.cover,) ),
      )
    );
}
}