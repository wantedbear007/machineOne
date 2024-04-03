import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:machineone/screens/home_screen/home_screen.dart';
import 'package:machineone/screens/home_screen/home_screen_bindings.dart';
import 'package:machineone/screens/unknow_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      unknownRoute:
          GetPage(name: "/notfound", page: () => const UnknownScreen()),
      // initialRoute: AppRoutes.getNavbarScreen(),
      initialRoute: "/",
      // getPages: AppRoutes.routes,
      getPages: [GetPage(name: "/", page: () => const HomeScreen())],
      initialBinding: HomeScreenBindings(),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
