import 'dart:convert';
import 'package:fsearch/models/soccer_match.dart';
import 'package:http/http.dart';

import 'package:fsearch/models/team.dart';

class ApiServices {
  static Future<List<TeamInfo>> getQuerriedTeams(String query) async {
    var body;
    List<TeamInfo> teams = [];
    Response res = await get(
        Uri.parse(
          'https://v3.football.api-sports.io/teams?search=$query',
        ),
        headers: {
          "x-rapidapi-host": "v3.football.api-sports.io",
          "x-rapidapi-key": '069292380d4a7dc552d0cb3e9304b4ca',
        });
    if (res.statusCode == 200) {
      body = jsonDecode(res.body);
      List<dynamic> teamList = body['response'];
      print(body);

      teams = teamList.map((dynamic item) => TeamInfo.fromJson(item)).toList();
      print(teams);
      return teams;
    } else {
      return teams;
    }
  }

  static Future<List<SoccerMatch>> getQuerriedFixture(String query) async {
    var body;
    List<SoccerMatch> teams = [];
    Response res = await get(
        Uri.parse(
          'https://v3.football.api-sports.io/fixtures?season=2021&team=$query&status=NS&next=3',
        ),
        headers: {
          "x-rapidapi-host": "v3.football.api-sports.io",
          "x-rapidapi-key": '069292380d4a7dc552d0cb3e9304b4ca',
        });
    if (res.statusCode == 200) {
      body = jsonDecode(res.body);
      List<dynamic> teamList = body['response'];
      print(body);

      teams =
          teamList.map((dynamic item) => SoccerMatch.fromJson(item)).toList();
      print(teams);
      return teams;
    } else {
      return teams;
    }
  }
}
