import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:machineone/navbar/navbar.dart';
import 'package:machineone/routes/routes.dart';
import 'package:machineone/screens/home_screen.dart';
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
    return  GetMaterialApp(
      unknownRoute: GetPage(name: "/notfound", page: () => const UnknownScreen()),
      initialRoute: AppRoutes.getNavbarScreen(),
      getPages: AppRoutes.routes,
      debugShowCheckedModeBanner: false,
      home: const ApplicationNavbar(),
      // home: HomeScreen(),
    );
  }
}
