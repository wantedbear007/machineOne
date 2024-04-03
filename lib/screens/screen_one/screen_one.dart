import 'package:flutter/material.dart';
import 'package:machineone/controllers/navigation_controller.dart';
import 'package:machineone/navbar/navbar.dart';
import 'package:machineone/pages/pageOne/page_one.dart';
import 'package:machineone/pages/pageOne/pageone_controller.dart';
import 'package:machineone/pages/pageTwo/page_two.dart';
import 'package:machineone/screens/screen_one/screen_one_controller.dart';
import 'package:machineone/widgets/app_bar.dart';
import 'package:machineone/widgets/custom_button.dart';
import 'package:get/get.dart';

class ScreenOne extends GetView<PageOneController> {
  ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        titleText: "PAGE 1",
        icon: Icons.arrow_back,
        iconVisibility: false,
      ),
      // appBar: customAppBar("PAGE 1", Icons.arrow_back_ios_sharp),
      body: Center(
        child: CustomButton(
          buttonText: "PAGE 2",
          // propContext: context,
          onTapEvent: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => PageOne()));
          },
        ),
      ),
    );
  }
}
