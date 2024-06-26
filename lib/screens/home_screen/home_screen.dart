import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:machineone/screens/home_screen/home_screen_controller.dart';
import 'package:machineone/screens/screen_one/screen_one.dart';
import 'package:machineone/screens/screen_three/screen_three.dart';
import 'package:machineone/screens/screen_two/screen_two.dart';

class HomeScreen extends GetView<HomeScreenController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: controller.onWillPop,
      child: GetBuilder<HomeScreenController>(
        builder: (controller) {
          return Scaffold(
            body: IndexedStack(
              index: controller.tabIndex,
              children: [
                Navigator(
                  key: controller.navigationKey,
                  onGenerateRoute: (routeSettings) {
                    return MaterialPageRoute(builder: (_) => const ScreenOne());
                  },
                ),
                const ScreenTwo(),
                const ScreenThree()
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
              selectedIconTheme: const IconThemeData(color: Colors.red),
              // selectedLabelStyle: Colors.red,
              selectedItemColor: Colors.red,
              currentIndex: controller.tabIndex,
              // backgroundColor: Colors.red,
             unselectedItemColor: Colors.black,

              // fixedColor: Colors.red,
              onTap: controller.changeTabIndex,
              iconSize: 0,
              items: <BottomNavigationBarItem>[
                _bottomNavigation("TAB 1"),
                _bottomNavigation("TAB 2"),
                _bottomNavigation("TAB 3"),
              ],
            ),
          );
        },
      ),
    );
  }
}

BottomNavigationBarItem _bottomNavigation(String tabName) {
  return BottomNavigationBarItem(
      icon: const Icon(Icons.home),
      label: tabName,
      // backgroundColor: Colors.red

    );
}
