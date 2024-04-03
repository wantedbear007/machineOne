import 'dart:convert';

import 'package:get/get.dart';
import 'package:machineone/utils/page_three_data.dart';

class PageThreeControllers extends GetxController {
  // late  ;
  // late final foodList; // Assuming it's a list
  Map<String, dynamic> decodedFoods =
      jsonDecode(foodNames) as Map<String, dynamic>;

  List<dynamic> getData() {
    return decodedFoods["page3"] as List<dynamic>;
  }
}
