import 'package:flutter/material.dart';
import 'package:machineone/pages/pageThree/page_three.dart';
import 'package:machineone/widgets/app_bar.dart';
import 'package:machineone/widgets/custom_button.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

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
          onTapEvent: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PageThree(
                  navigationIcon: Icons.close,
                ),
              ),
            );
          },
          buttonText: "PAGE 3",
        ),
      ),
    );
  }
}
