import 'dart:convert';

import 'package:fsearch/models/odds.dart';
import 'package:fsearch/services/api_services.dart';
import 'package:get/get.dart';

class OddsController extends GetxController {
  var isLoading = false.obs;
  var oddList = <Odds>[].obs;

  fetchOddData(String query) async {
    try {
      isLoading(true);
      var products = await ApiServices.getQuerriedOdds(query);
      if (products.isNotEmpty) {
        oddList.assignAll(products);
      }
    } finally {
      isLoading(false);
    }
  }
}
