import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();
  Rx<int> carouselIndex = 0.obs;

  void onChange(int index) {
    carouselIndex.value = index;
  }
}
