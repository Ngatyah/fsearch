import 'package:fsearch/api_services.dart';
import 'package:fsearch/team.dart';
import 'package:get/get.dart';

class TeamController extends GetxController {
  var isLoading = false.obs;
  var teamList = <Team>[].obs;
  var cdate = DateTime.now().obs;

  void fetchMatches(String query) async {
    try {
      isLoading(true);
      var products = await ApiServices.getAllMatchPerDay(query);
      if (products.isNotEmpty) {
        teamList.assignAll(products);
      }
    } finally {
      isLoading(false);
    }
  }
}
