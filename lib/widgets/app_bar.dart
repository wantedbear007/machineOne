import 'package:flutter/material.dart';

AppBar customAppBar(String titleText, IconData icon, [bool iconVisibility = false]) {



  return AppBar(
    centerTitle: true,
    backgroundColor: Colors.black,
    leading: InkWell(
      child:  iconVisibility ? Icon(
        icon,
        color: Colors.white,
      ) : null,
      onTap: () {
        print("button clicked ${titleText}");
      },
    ),
    title: Text(
      titleText,
      style: const TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
    ),
  );
}
