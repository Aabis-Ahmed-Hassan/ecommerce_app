import 'package:ecommerce_app/features/authentication/screens/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  PageController pageController = PageController();

  Rx<int> selectedPageIndex = 0.obs;

  void updatePageIndicator(int index) {
    print('update page indicator');
    selectedPageIndex.value = index;
  }

  void dotNavigationClick(int index) {
    print('dot');
    pageController.jumpTo(double.parse(index.toString()));
  }

  void nextPage() {
    if (selectedPageIndex.value < 2) {
      pageController.animateToPage(
        selectedPageIndex.value + 1,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      moveToNextScreen();
    }
  }

  void skipPage() {
    print('skip page');
    pageController.jumpTo(2);
    moveToNextScreen();
  }
}

void moveToNextScreen() {
  Get.offAll(Login());
}

// class OnboardingController extends GetxController {
//   static OnboardingController get instance => Get.find();
//
//   final PageController pageController = PageController();
//   var currentPage = 0.obs; // Make it reactive
//
//   void updatePageIndicator(int index) {
//     currentPage.value = index; // This will trigger UI update
//   }
//
//   void nextPage() {
//     if (currentPage.value < 2) {
//       pageController.animateToPage(
//         currentPage.value + 1,
//         duration: Duration(milliseconds: 300),
//         curve: Curves.easeInOut,
//       );
//     }
//   }
//
//   void skipPage() {
//     pageController.jumpToPage(2);
//   }
//
//   void dotNavigationClick(int index) {
//     pageController.jumpToPage(index);
//   }
// }
