import 'package:get/get.dart';

class ExteriorController extends GetxController {
  var isExterior = false.obs;

  void toggle() {
    isExterior.value = !isExterior.value;
  }
}
