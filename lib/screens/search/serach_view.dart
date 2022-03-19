import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parametric_market_app/constants/constants.dart';

class SearchView extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    final planetThumbnail =   Hero(
      tag: 'planet-icon-',
      child: CircleAvatar(

        radius: 43,
        child: CircleAvatar(
          radius: 40,
          
          child:Image.asset('images/mercury.png',fit: BoxFit.cover,) ),
      )
    );

    final planetCard = Container(
      height: 150,
      margin: EdgeInsets.only(left: 50),
      width: Get.width,

      child: Card(
        
        elevation: 10.0,
        child: Padding(
          padding: const EdgeInsets.only(left:50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              Text("Mint condition 18x8 rim"),

              Divider(
                color: Theme.of(context).primaryColor,
                thickness: 2,endIndent: Get.width*0.1,),

                Row(children: [

                  Text('${dimeterHintText}: '),
                  Text("33"),

                ],)
            ],




      ),
        )),
     
    );

    return Scaffold(
      appBar: AppBar(title: Text("ddd"),),
      body: FlatButton(
    
        onPressed: () {  },
        child: Stack(
          alignment: Alignment.centerLeft,
          children: <Widget>[
            planetCard,
            planetThumbnail,
          ],
        ),
      ),
    );
  }


}