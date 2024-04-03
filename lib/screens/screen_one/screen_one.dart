import 'package:flutter/material.dart';
import 'package:machineone/pages/pageOne/page_one.dart';
import 'package:machineone/pages/pageOne/pageone_controller.dart';
import 'package:machineone/widgets/app_bar.dart';
import 'package:machineone/widgets/custom_button.dart';
import 'package:get/get.dart';

class ScreenOne extends GetView<PageOneController> {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        titleText: "PAGE 1",
        icon: Icons.arrow_back,
        iconVisibility: false,
      ),
      body: Center(
        child: CustomButton(
          buttonText: "PAGE 2",
          onTapEvent: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const PageOne()));
          },
        ),
      ),
    );
  }
}
