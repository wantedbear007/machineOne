import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:machineone/pages/pageThree/Pagethree_controllers.dart';
import 'package:machineone/widgets/app_bar.dart';
import 'package:machineone/widgets/food_containers.dart';

class PageThree extends GetView<PageThreeControllers> {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    // list of foods
    List<dynamic> foods = controller.getData();
    return Scaffold(
        appBar: const CustomAppBar(
          iconVisibility: true,
          icon: Icons.arrow_back,
          titleText: "PAGE 3",
        ),
        body: foods != null
            ? ListView.builder(
                itemCount: foods.length,
                itemBuilder: (context, index) {
                  return FoodContainers(foodName: foods[index]);
                })
            : const Center(
                child:  Text("No food names available "),
              ));
  }
}
