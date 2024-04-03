import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String titleText;
  final IconData icon;
  final bool iconVisibility;

  const CustomAppBar(
      {super.key, required this.titleText,
      required this.icon,
      required this.iconVisibility});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.black,
      leading: iconVisibility
          ? InkWell(
              child: Icon(
                icon,
                color: Colors.white,
              ),
              onTap: () {
                Navigator.of(context).pop();
              },
            )
          : null,
      title: Text(
        titleText,
        style:
            const TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
