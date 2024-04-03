import 'package:flutter/material.dart';
import 'package:machineone/navbar/navbar.dart';
import 'package:machineone/pages/pageThree/page_three.dart';
import 'package:machineone/widgets/app_bar.dart';
import 'package:machineone/widgets/custom_button.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        appBar: const CustomAppBar(
            titleText: "PAGE 2",
            icon: Icons.arrow_back_ios_sharp,
            iconVisibility: true),
        body: Center(
          child: CustomButton(
            buttonText: "PAGE 3",
            onTapEvent: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const PageThree()));
            },
          ),
        ),
      ),
    );
  }
}
