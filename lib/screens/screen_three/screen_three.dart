import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:machineone/screens/home_screen/home_screen_controller.dart';
import 'package:machineone/widgets/app_bar.dart';
import 'package:machineone/widgets/custom_button.dart';

class ScreenThree extends GetView<HomeScreenController> {
  const ScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        iconVisibility: false,
        icon: Icons.arrow_back,
        titleText: "PAGE 1",
      ),
      body: Center(
        child: CustomButton(
          buttonText: "TAB 1",
          onTapEvent: () {
            controller.changeTabIndex(0);
          },

        ),
      ),
    );
  }
}
