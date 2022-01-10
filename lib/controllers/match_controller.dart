import 'package:fsearch/models/soccer_match.dart';
import 'package:fsearch/services/api_services.dart';
import 'package:get/get.dart';

class MatchController extends GetxController {
  var isLoading = false.obs;

  var matchList = <SoccerMatch>[].obs;
  var selectedFixture = <SoccerMatch>[].obs;
  var cdate = DateTime.now().obs;

  deleteSelectedMatch(int index) => selectedFixture.removeAt(index);

  void fetchFixtures(String query) async {
    try {
      isLoading(true);
      var products = await ApiServices.getQuerriedFixture(query);
      if (products.isNotEmpty) {
        matchList.assignAll(products);
        print('Data Called in the Controller');
      }
    } finally {
      isLoading(false);
    }
  }
}
