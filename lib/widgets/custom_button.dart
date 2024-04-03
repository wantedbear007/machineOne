import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onTapEvent;

  const CustomButton({super.key,
    // super.key,
    required this.buttonText,
    required this.onTapEvent,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      color: Colors.red,
      child: InkWell(
        onTap: onTapEvent,
        splashColor: Colors.black12,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
          child: Text(
            buttonText,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
