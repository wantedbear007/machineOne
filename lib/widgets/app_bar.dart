import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String titleText;
  final IconData icon;
  final bool iconVisibility;

  const CustomAppBar(
      {required this.titleText,
      required this.icon,
      required this.iconVisibility});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.black,
      leading: InkWell(
        child: iconVisibility
            ? Icon(
                icon,
                color: Colors.white,
              )
            : null,
        onTap: () {
          Navigator.of(context).pop();
        },
      ),
      title: Text(
        titleText,
        style:
            const TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
