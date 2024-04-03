import 'package:get/get.dart';
import 'package:machineone/pages/pageOne/pageone_controller.dart';
import 'package:machineone/screens/home_screen/home_screen_controller.dart';
import 'package:machineone/screens/screen_one/screen_one_controller.dart';

class HomeScreenBindings extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<HomeScreenController>(() => HomeScreenController());
    Get.lazyPut<ScreenOneController>(() => ScreenOneController());
    Get.lazyPut<PageOneController>(() => PageOneController());
  }

}