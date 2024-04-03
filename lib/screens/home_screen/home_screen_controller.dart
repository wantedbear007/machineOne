// import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class HomeScreenController extends GetxController {
  static HomeScreenController get to => Get.find();

  int tabIndex = 0;
  int currentIndex = 0;

  void changeTabIndex(int index) {
    tabIndex = index;
    update();
  }

  final GlobalKey<NavigatorState> navigationKey = GlobalKey<NavigatorState>();

  Future<bool> onWillPop() async {
    return !await navigationKey.currentState!.maybePop();
  }


}