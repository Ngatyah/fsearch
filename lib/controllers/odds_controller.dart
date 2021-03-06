import 'package:fsearch/models/bet_info.dart';
import 'package:fsearch/models/odds.dart';
import 'package:fsearch/services/api_services.dart';
import 'package:get/get.dart';

class OddsController extends GetxController {
  var isLoading = false.obs;
  var oddList = <Odds>[].obs;
  var selectedOdd = <Bets>[].obs;
  var selectedBet = <BetInfo>[].obs;
  var oddPrice = 0.0.obs;
  var showOddPrice = false.obs;
  get filterSelectedBet => selectedBet.where((p0) => false);
  totalOdds() {
    var totalSum = selectedBet.fold(
        0,
        (pValue, element) =>
            double.parse(pValue!.toString()) +
            double.parse((element.bets?.values[0].odd) ?? 0.toString()));
    return totalSum;
  }

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
