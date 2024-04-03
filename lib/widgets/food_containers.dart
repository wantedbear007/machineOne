import 'package:flutter/material.dart';

class FoodContainers extends StatelessWidget {
  final String foodName;

  const FoodContainers({super.key, required this.foodName});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      width: 100,
      height: 40,
      child: InkWell(
        child: Text(foodName),
      ),
    );
  }
}
