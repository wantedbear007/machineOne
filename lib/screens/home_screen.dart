import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:machineone/controllers/couter.dart';



class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final CounterController counter = Get.put(CounterController());

  void buttonTrig() {
    print("button is presseed");
    counter.increment();
    print("Value of counter is ${counter.count}");
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("testing 101"),),
      body: Center(
        child: Obx(() => Text("Value of count is ${counter.count}")),
        // child: Text(  "Value of button is  ${counter.count} "),
        
        
      ),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.add), onPressed: buttonTrig),
    );
  }
}
