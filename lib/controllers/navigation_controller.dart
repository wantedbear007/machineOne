import 'package:get/get.dart';

class NavigationController extends GetxController {
  // initial
  int currentPageIndex = 0;

//   to change tabs
  void changeCurrentPage(int index) {
    currentPageIndex = index;
    update();
  }
}