
import 'package:get/get.dart';
import 'package:parametric_market_app/screens/tabs/tabs_controller.dart';

import 'screens/add_new/add_parameters_controller.dart';
import 'screens/home/home_controller.dart';


class Binder extends Bindings {
  @override
  void dependencies() {
     Get.lazyPut<HomeController>(() => HomeController());

     Get.lazyPut<TabsViewController>(() => TabsViewController());
     Get.put(AddParametersController());

     

    // Get.lazyPut<LibraryViewController>(() => LibraryViewController());
    // Get.lazyPut(() => VideosPlayerController());
    // Get.lazyPut(() => CameraRollViewController());

    // Get.lazyPut(() => ImageFilterViewController());
  }
}
