import 'dart:convert';
import 'package:http/http.dart';

import 'package:fsearch/team.dart';

class ApiServices {
  static Future<List<Team>> getAllMatchPerDay(String query) async {
    var body;
    List<Team> teams = [];
    Response res = await get(
        Uri.parse(
          'https://v3.football.api-sports.io/fixtures?date=$query',
        ),
        headers: {
          "x-rapidapi-host": "v3.football.api-sports.io",
          "x-rapidapi-key": '069292380d4a7dc552d0cb3e9304b4ca',
        });
    if (res.statusCode == 200) {
      body = jsonDecode(res.body);
      List<dynamic> teamList = body['response'];

      teams = teamList.map((dynamic item) => Team.fromJson(item)).toList();
      return teams;
    } else {
      return teams;
    }
  }
}
