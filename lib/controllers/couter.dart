import 'package:get/get.dart';
// import 'package:get/get_rx/get_rx.dart';

class CounterController extends GetxController {
  var count = 0.obs;
  increment() {
    print("function called ");
    count++;
  }
}