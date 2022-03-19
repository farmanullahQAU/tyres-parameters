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
        
        wheel: WheelModel(rimOffset: 41, rimWidth: 83,rimDimeter: 12), type: "Rim", tyreWidth: 88),
            TyreModel(
        description: "Short offering descriptions2 goes here....",
        
        wheel: WheelModel(rimOffset: 47, rimWidth: 34,rimDimeter: 30), type: "Rim", tyreWidth: 34),
            TyreModel(
        description: "Short offering descriptions3 goes here....",
        
        wheel: WheelModel(rimOffset: 4, rimWidth: 16,rimDimeter: 99), type: "Rim", tyreWidth: 32),
           TyreModel(
        description: "Short offering descriptions3 goes here....",
        
        wheel: WheelModel(rimOffset: 1, rimWidth: 12,rimDimeter: 99), type: "Tyre", tyreWidth: 66),
           TyreModel(
        description: "Short offering descriptions4 goes here....",
        
        wheel: WheelModel(rimOffset: 87, rimWidth: 43,rimDimeter: 90), type: "Wheel", tyreWidth: 12),
          TyreModel(
        description: "Short offering descriptions3 goes here....",
        
        wheel: WheelModel(rimOffset: 6, rimWidth: 43,rimDimeter: 90), type: "Wheel", tyreWidth: 12),
          TyreModel(
        description: "Short offering descriptions3 goes here....",
        
        wheel: WheelModel(rimOffset: 4, rimWidth: 43,rimDimeter: 22), type: "RIM", tyreWidth: 85),
          TyreModel(
        description: "Short offering descriptions3 goes here....",
        
        wheel: WheelModel(rimOffset: 33, rimWidth: 18,rimDimeter: 90), type: "TYRE", tyreWidth: 35),
          TyreModel(
        description: "Short offering descriptions3 goes here....",
        
        wheel: WheelModel(rimOffset: 4, rimWidth: 43,rimDimeter: 90), type: "Wheel", tyreWidth: 11),
               TyreModel(
        description: "Short offering descriptions3 goes here....",
        
        wheel: WheelModel(rimOffset: 6, rimWidth: 43,rimDimeter: 90), type: "Wheel", tyreWidth: 12),
                   TyreModel(
        description: "Short offering descriptions3 goes here....",
        
        wheel: WheelModel(rimOffset: 1, rimWidth: 12,rimDimeter: 99), type: "Tyre", tyreWidth: 66),
    ];
    super.onInit();
  }

}