import 'package:flutter/cupertino.dart';
import 'package:get/state_manager.dart';
import 'package:parametric_market_app/models/tyre_model.dart';

class HomeController extends GetxController{
late final List<TyreModel> _tyresList;

List<TyreModel> get tyresList=>_tyresList;

@override
  void onInit() {

    _tyresList=[


      TyreModel(
        description: "Short offering descriptions goes here....",
        
        wheel: WheelModel(rimOffset: 22, rimWidth: 55,rimDimeter: 76), type: "Rim", tyreWidth: 34),

            TyreModel(
        description: "Short offering descriptions1 goes here....",
        
        wheel: WheelModel(rimOffset: 41, rimWidth: 83,rimDimeter: 12), type: "Rim", tyreWidth: 34),
            TyreModel(
        description: "Short offering descriptions2 goes here....",
        
        wheel: WheelModel(rimOffset: 47, rimWidth: 34,rimDimeter: 30), type: "Rim", tyreWidth: 34),
            TyreModel(
        description: "Short offering descriptions3 goes here....",
        
        wheel: WheelModel(rimOffset: 4, rimWidth: 88,rimDimeter: 99), type: "Rim", tyreWidth: 34)
    ];
    super.onInit();
  }

}