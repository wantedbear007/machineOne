import 'package:flutter/material.dart';

class FoodContainers extends StatelessWidget {
  final String foodName;

  const FoodContainers({super.key, required this.foodName});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.red),
      // color: Colors.amber,
      // width: 20,
      alignment: Alignment.center,
      height: 50,
      child: InkWell(
        child: Text(
          foodName,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
