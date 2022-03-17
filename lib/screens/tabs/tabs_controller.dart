import 'package:flutter/widgets.dart';
import 'package:get/state_manager.dart';
import 'package:parametric_market_app/screens/home/home_view.dart';

import '../add_new/add_parameters_view.dart';

class TabsViewController extends GetxController{

  final _currentIndex=0.obs;
  int get currentIndex=>_currentIndex.value;

  set currentIndex(int index)=>_currentIndex.value=index;
final List<Widget> _tabs=[

AddParametersView(),
  HomeView(),
  Text("Search")

  
];

List<Widget> get tabs=>_tabs;
  @override
  void onInit() {


    super.onInit();
  }
}