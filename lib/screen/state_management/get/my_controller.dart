import 'package:get/get.dart';

class MyController extends GetxController {

  static MyController get to => Get.find<MyController>();

  static void setController() {
    if(!Get.isRegistered<MyController>()) {
      Get.put(MyController(), permanent: true);
    }
  }

  RxInt count = 0.obs;

  void countUp() {
    count.value++;
  }
}