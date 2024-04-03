import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:machineone/screens/home_screen/home_screen_controller.dart';

class PageOneController extends GetxController {
  static PageOneController get to => Get.find();

  RxBool isPageOpen = false.obs;

  void setPage(bool ck) {
    isPageOpen(ck);
  }

  void back() {
    setPage(false);
    HomeScreenController.to.onWillPop();
  }
}
