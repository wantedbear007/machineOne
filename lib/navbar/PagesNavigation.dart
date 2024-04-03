// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:machineone/pages/page_one.dart';
// import 'package:machineone/pages/page_two.dart';
//
// class PagesNavigation  {
//
//   PagesNavigation._();
//   static const int id = 0;
//
//   static const pageOne = "/pageone";
//   static const pageTwo = "/pagetwo";
//   static const pageThree = "/pagethree";
// }
//
// class NavigationWrapper extends StatelessWidget {
//   const NavigationWrapper({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Navigator(
//       key: Get.nestedKey(PagesNavigation.id),
//       onGenerateRoute: (settings) {
//         if (settings.name == PagesNavigation.pageOne) {
//           return GetPageRoute(
//             routeName: PagesNavigation.pageOne,
//             page: () => DialogScreen(
//               id
//             )
//           )
//         } else if (settings.name == PagesNavigation.pageTwo) {
//           return GetPageRoute(
//             routeName:  PagesNavigation.pageTwo,
//             page: () => PageTwo()
//           )
//         }
//       },
//     );
//   }
// }
