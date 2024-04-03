import 'dart:convert';

import 'package:get/get.dart';
import 'package:machineone/utils/page_three_data.dart';

class PageThreeControllers extends GetxController {
  Map<String, dynamic> decodedFoods =
      jsonDecode(foodNames) as Map<String, dynamic>;

  List<dynamic> getData() {
    return decodedFoods["page3"] as List<dynamic>;
  }
}
