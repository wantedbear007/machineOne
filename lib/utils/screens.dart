import 'package:flutter/material.dart';
import 'package:machineone/pages/pageOne/page_one.dart';
import 'package:machineone/pages/pageThree/page_three.dart';
import 'package:machineone/screens/screen_one/screen_one.dart';
import 'package:machineone/screens/screen_three/screen_three.dart';
import 'package:machineone/screens/screen_two/screen_two.dart';

List<Widget> screens = [
  const ScreenOne(),
  const ScreenTwo(),
  const ScreenThree(),
  const PageOne(),
  const PageThree()
];
