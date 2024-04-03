// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:machineone/controllers/navigation_controller.dart';
// import 'package:machineone/utils/screens.dart';
//
// // TODO
// /*
// 1. remove bottom white space
//
//  */
//
// class ApplicationNavbar extends StatelessWidget {
//   const ApplicationNavbar({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final NavigationController navigationController =
//         Get.put(NavigationController());
//
//     return GetBuilder<NavigationController>(builder: (context) {
//       return Scaffold(
//         body: IndexedStack(
//           index: navigationController.currentPageIndex,
//           children: screens,
//         ),
//         bottomNavigationBar: BottomNavigationBar(
//           backgroundColor: Colors.black,
//           // fixedColor: Colors.amberAccent,
//           // selectedIconTheme: const IconThemeData(color: Colors.red),
//           selectedItemColor: Colors.red,
//           currentIndex: navigationController.currentPageIndex,
//           onTap: navigationController.changeCurrentPage,
//           iconSize: 0,
//
//           items: <BottomNavigationBarItem>[
//             _bottomNavigation("TAB 1"),
//             _bottomNavigation("TAB 2"),
//             _bottomNavigation("TAB 3"),
//           ],
//         ),
//       );
//     });
//   }
// }
//
// BottomNavigationBarItem _bottomNavigation(String tabName) {
//   return BottomNavigationBarItem(
//       icon: const Icon(Icons.home),
//       label: tabName,
//       // backgroundColor: Colors.red
//   );
// }
