import 'package:get/state_manager.dart';

class AddParametersController extends GetxController {
  final List<int> _rimDimetersValues = [
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20,
    21,
    22,
    23,
    24,
    25,
    26,
    27,
    28,
    29,
    30
  ];

  List<int> get rimDimetersValues => _rimDimetersValues;

  final List<double> _rimWidth = [
4,4.5,5,5.5,6,6.5,7,7.5,8,8.5,9,9.5,10,10.5,11,11.5,12,12.5
  ];

  List<double> get rimWidth => _rimWidth;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}
