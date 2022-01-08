import 'package:fsearch/services/api_services.dart';
import 'package:fsearch/models/team.dart';
import 'package:get/get.dart';

class TeamController extends GetxController {
  var isLoading = false.obs;
  var teamList = <TeamInfo>[].obs;
  var cdate = DateTime.now().obs;

  void fetchTeams(String query) async {
    try {
      isLoading(true);
      var products = await ApiServices.getQuerriedTeams(query);
      if (products.isNotEmpty) {
        teamList.assignAll(products);
        print('Data Called in the Controller');
      }
    } finally {
      isLoading(false);
    }
  }
}
