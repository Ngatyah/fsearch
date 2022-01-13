import 'package:get/get.dart';

class OddsController extends GetxController {
  var isLoading = false.obs;
  var oddList = <SoccerMatch>[].obs;

  final rawOdds = {
    "get": "odds",
    "parameters": {"bookmaker": "6", "fixture": "815162"},
    "errors": [],
    "results": 1,
    "paging": {"current": 1, "total": 1},
    "response": [
      {
        "league": {
          "id": 45,
          "name": "FA Cup",
          "country": "England",
          "logo": "https://media.api-sports.io/football/leagues/45.png",
          "flag": "https://media.api-sports.io/flags/gb.svg",
          "season": 2021
        },
        "fixture": {
          "id": 815162,
          "timezone": "UTC",
          "date": "2022-01-10T19:55:00+00:00",
          "timestamp": 1641844500
        },
        "update": "2022-01-10T16:00:45+00:00",
        "bookmakers": [
          {
            "id": 6,
            "name": "Bwin",
            "bets": [
              {
                "id": 1,
                "name": "Match Winner",
                "values": [
                  {"value": "Home", "odd": "1.65"},
                  {"value": "Draw", "odd": "3.80"},
                  {"value": "Away", "odd": "4.50"}
                ]
              },
              {
                "id": 2,
                "name": "Home/Away",
                "values": [
                  {"value": "Home", "odd": "1.28"},
                  {"value": "Away", "odd": "3.40"}
                ]
              },
              {
                "id": 3,
                "name": "Second Half Winner",
                "values": [
                  {"value": "Home", "odd": "1.98"},
                  {"value": "Draw", "odd": "2.60"},
                  {"value": "Away", "odd": "4.40"}
                ]
              },
              {
                "id": 5,
                "name": "Goals Over/Under",
                "values": [
                  {"value": "Over 3.5", "odd": "2.95"},
                  {"value": "Under 3.5", "odd": "1.35"},
                  {"value": "Over 1.5", "odd": "1.26"},
                  {"value": "Under 1.5", "odd": "3.50"},
                  {"value": "Over 4.5", "odd": "5.50"},
                  {"value": "Under 4.5", "odd": "1.13"},
                  {"value": "Over 2.5", "odd": "1.78"},
                  {"value": "Under 2.5", "odd": "1.93"},
                  {"value": "Over 0.5", "odd": "1.05"},
                  {"value": "Under 0.5", "odd": "10.50"},
                  {"value": "Over 5.5", "odd": "11.00"},
                  {"value": "Under 5.5", "odd": "1.04"},
                  {"value": "Over 6.5", "odd": "23.00"},
                  {"value": "Under 6.5", "odd": "1.00"}
                ]
              },
              {
                "id": 6,
                "name": "Goals Over/Under First Half",
                "values": [
                  {"value": "Over 3.5", "odd": "18.00"},
                  {"value": "Under 3.5", "odd": "1.01"},
                  {"value": "Over 1.5", "odd": "2.60"},
                  {"value": "Under 1.5", "odd": "1.44"},
                  {"value": "Over 4.5", "odd": "46.00"},
                  {"value": "Over 2.5", "odd": "6.50"},
                  {"value": "Under 2.5", "odd": "1.10"},
                  {"value": "Over 0.5", "odd": "1.35"},
                  {"value": "Under 0.5", "odd": "2.80"}
                ]
              },
              {
                "id": 26,
                "name": "Goals Over/Under - Second Half",
                "values": [
                  {"value": "Over 3.5", "odd": "10.00"},
                  {"value": "Under 3.5", "odd": "1.05"},
                  {"value": "Over 1.5", "odd": "2.00"},
                  {"value": "Under 1.5", "odd": "1.71"},
                  {"value": "Over 2.5", "odd": "4.20"},
                  {"value": "Under 2.5", "odd": "1.20"},
                  {"value": "Over 0.5", "odd": "1.22"},
                  {"value": "Under 0.5", "odd": "4.00"}
                ]
              },
              {
                "id": 7,
                "name": "HT/FT Double",
                "values": [
                  {"value": "Home/Draw", "odd": "14.50"},
                  {"value": "Home/Away", "odd": "34.00"},
                  {"value": "Draw/Away", "odd": "9.75"},
                  {"value": "Draw/Draw", "odd": "5.75"},
                  {"value": "Home/Home", "odd": "2.55"},
                  {"value": "Draw/Home", "odd": "4.50"},
                  {"value": "Away/Home", "odd": "20.00"},
                  {"value": "Away/Draw", "odd": "15.00"},
                  {"value": "Away/Away", "odd": "7.25"}
                ]
              },
              {
                "id": 27,
                "name": "Clean Sheet - Home",
                "values": [
                  {"value": "Yes", "odd": "2.35"},
                  {"value": "No", "odd": "1.53"}
                ]
              },
              {
                "id": 28,
                "name": "Clean Sheet - Away",
                "values": [
                  {"value": "Yes", "odd": "5.00"},
                  {"value": "No", "odd": "1.16"}
                ]
              },
              {
                "id": 8,
                "name": "Both Teams Score",
                "values": [
                  {"value": "Yes", "odd": "1.82"},
                  {"value": "No", "odd": "1.88"}
                ]
              },
              {
                "id": 29,
                "name": "Win to Nil - Home",
                "values": [
                  {"value": "Yes", "odd": "2.80"},
                  {"value": "No", "odd": "1.39"}
                ]
              },
              {
                "id": 30,
                "name": "Win to Nil - Away",
                "values": [
                  {"value": "Yes", "odd": "7.75"},
                  {"value": "No", "odd": "1.08"}
                ]
              },
              {
                "id": 9,
                "name": "Handicap Result",
                "values": [
                  {"value": "Home -1", "odd": "2.75"},
                  {"value": "Away -1", "odd": "2.15"},
                  {"value": "Draw -1", "odd": "3.50"},
                  {"value": "Home +1", "odd": "1.19"},
                  {"value": "Away +1", "odd": "10.50"},
                  {"value": "Draw +1", "odd": "6.25"},
                  {"value": "Home -2", "odd": "5.50"},
                  {"value": "Draw -2", "odd": "4.80"},
                  {"value": "Away -2", "odd": "1.40"},
                  {"value": "Home -3", "odd": "9.00"},
                  {"value": "Draw -3", "odd": "7.00"},
                  {"value": "Away -3", "odd": "1.19"}
                ]
              },
              {
                "id": 10,
                "name": "Exact Score",
                "values": [
                  {"value": "1:0", "odd": "6.75"},
                  {"value": "2:0", "odd": "7.75"},
                  {"value": "2:1", "odd": "7.75"},
                  {"value": "3:0", "odd": "11.50"},
                  {"value": "3:1", "odd": "12.00"},
                  {"value": "3:2", "odd": "20.00"},
                  {"value": "4:0", "odd": "20.00"},
                  {"value": "4:1", "odd": "21.00"},
                  {"value": "4:2", "odd": "34.00"},
                  {"value": "4:3", "odd": "61.00"},
                  {"value": "0:0", "odd": "10.50"},
                  {"value": "1:1", "odd": "7.25"},
                  {"value": "2:2", "odd": "14.00"},
                  {"value": "3:3", "odd": "41.00"},
                  {"value": "4:4", "odd": "126.00"},
                  {"value": "0:1", "odd": "11.50"},
                  {"value": "0:2", "odd": "20.00"},
                  {"value": "0:3", "odd": "41.00"},
                  {"value": "0:4", "odd": "81.00"},
                  {"value": "1:2", "odd": "13.50"},
                  {"value": "1:3", "odd": "29.00"},
                  {"value": "1:4", "odd": "61.00"},
                  {"value": "2:3", "odd": "31.00"},
                  {"value": "2:4", "odd": "67.00"},
                  {"value": "3:4", "odd": "81.00"}
                ]
              },
              {
                "id": 11,
                "name": "Highest Scoring Half",
                "values": [
                  {"value": "Draw", "odd": "3.40"},
                  {"value": "1st Half", "odd": "3.00"},
                  {"value": "2nd Half", "odd": "2.05"}
                ]
              },
              {
                "id": 31,
                "name": "Correct Score - First Half",
                "values": [
                  {"value": "1:0", "odd": "3.70"},
                  {"value": "2:0", "odd": "8.00"},
                  {"value": "2:1", "odd": "16.00"},
                  {"value": "3:0", "odd": "23.00"},
                  {"value": "3:1", "odd": "41.00"},
                  {"value": "3:2", "odd": "91.00"},
                  {"value": "4:0", "odd": "56.00"},
                  {"value": "4:1", "odd": "91.00"},
                  {"value": "4:2", "odd": "151.00"},
                  {"value": "0:0", "odd": "3.00"},
                  {"value": "1:1", "odd": "7.50"},
                  {"value": "2:2", "odd": "46.00"},
                  {"value": "3:3", "odd": "176.00"},
                  {"value": "0:1", "odd": "6.50"},
                  {"value": "0:2", "odd": "21.00"},
                  {"value": "0:3", "odd": "67.00"},
                  {"value": "0:4", "odd": "176.00"},
                  {"value": "1:2", "odd": "26.00"},
                  {"value": "1:3", "odd": "71.00"},
                  {"value": "1:4", "odd": "176.00"},
                  {"value": "2:3", "odd": "101.00"},
                  {"value": "2:4", "odd": "251.00"}
                ]
              },
              {
                "id": 62,
                "name": "Correct Score - Second Half",
                "values": [
                  {"value": "1:0", "odd": "4.00"},
                  {"value": "2:0", "odd": "7.25"},
                  {"value": "2:1", "odd": "12.00"},
                  {"value": "3:0", "odd": "16.50"},
                  {"value": "3:1", "odd": "26.00"},
                  {"value": "3:2", "odd": "56.00"},
                  {"value": "4:0", "odd": "41.00"},
                  {"value": "4:1", "odd": "56.00"},
                  {"value": "4:2", "odd": "101.00"},
                  {"value": "4:3", "odd": "201.00"},
                  {"value": "0:0", "odd": "4.00"},
                  {"value": "1:1", "odd": "7.00"},
                  {"value": "2:2", "odd": "31.00"},
                  {"value": "3:3", "odd": "126.00"},
                  {"value": "0:1", "odd": "7.00"},
                  {"value": "0:2", "odd": "19.00"},
                  {"value": "0:3", "odd": "51.00"},
                  {"value": "0:4", "odd": "126.00"},
                  {"value": "1:2", "odd": "19.50"},
                  {"value": "1:3", "odd": "56.00"},
                  {"value": "1:4", "odd": "126.00"},
                  {"value": "2:3", "odd": "81.00"},
                  {"value": "2:4", "odd": "176.00"},
                  {"value": "3:4", "odd": "251.00"}
                ]
              },
              {
                "id": 12,
                "name": "Double Chance",
                "values": [
                  {"value": "Home/Draw", "odd": "1.19"},
                  {"value": "Home/Away", "odd": "1.24"},
                  {"value": "Draw/Away", "odd": "2.15"}
                ]
              },
              {
                "id": 13,
                "name": "First Half Winner",
                "values": [
                  {"value": "Home", "odd": "2.20"},
                  {"value": "Draw", "odd": "2.25"},
                  {"value": "Away", "odd": "4.60"}
                ]
              },
              {
                "id": 14,
                "name": "Team To Score First",
                "values": [
                  {"value": "Home", "odd": "1.53"},
                  {"value": "Draw", "odd": "10.50"},
                  {"value": "Away", "odd": "2.80"}
                ]
              },
              {
                "id": 32,
                "name": "Win Both Halves",
                "values": [
                  {"value": "Home", "odd": "4.40"},
                  {"value": "Draw", "odd": "1.24"},
                  {"value": "Away", "odd": "17.00"}
                ]
              },
              {
                "id": 16,
                "name": "Total - Home",
                "values": [
                  {"value": "Over 3.5", "odd": "7.00"},
                  {"value": "Under 3.5", "odd": "1.09"},
                  {"value": "Over 1.5", "odd": "1.73"},
                  {"value": "Under 1.5", "odd": "1.98"},
                  {"value": "Over 2.5", "odd": "3.25"},
                  {"value": "Under 2.5", "odd": "1.30"},
                  {"value": "Over 0.5", "odd": "1.16"},
                  {"value": "Under 0.5", "odd": "5.00"}
                ]
              },
              {
                "id": 17,
                "name": "Total - Away",
                "values": [
                  {"value": "Over 3.5", "odd": "29.00"},
                  {"value": "Over 1.5", "odd": "3.50"},
                  {"value": "Under 1.5", "odd": "1.26"},
                  {"value": "Over 2.5", "odd": "10.00"},
                  {"value": "Under 2.5", "odd": "1.05"},
                  {"value": "Over 0.5", "odd": "1.53"},
                  {"value": "Under 0.5", "odd": "2.35"}
                ]
              },
              {
                "id": 18,
                "name": "Handicap Result - First Half",
                "values": [
                  {"value": "Home -1", "odd": "6.00"},
                  {"value": "Away -1", "odd": "1.60"},
                  {"value": "Draw -1", "odd": "3.20"},
                  {"value": "Home +1", "odd": "1.17"},
                  {"value": "Away +1", "odd": "18.00"},
                  {"value": "Draw +1", "odd": "5.50"}
                ]
              },
              {
                "id": 20,
                "name": "Double Chance - First Half",
                "values": [
                  {"value": "Home/Draw", "odd": "1.17"},
                  {"value": "Home/Away", "odd": "1.58"},
                  {"value": "Draw/Away", "odd": "1.60"}
                ]
              },
              {
                "id": 33,
                "name": "Double Chance - Second Half",
                "values": [
                  {"value": "Home/Draw", "odd": "1.18"},
                  {"value": "Home/Away", "odd": "1.44"},
                  {"value": "Draw/Away", "odd": "1.73"}
                ]
              },
              {
                "id": 34,
                "name": "Both Teams Score - First Half",
                "values": [
                  {"value": "Yes", "odd": "4.50"},
                  {"value": "No", "odd": "1.18"}
                ]
              },
              {
                "id": 35,
                "name": "Both Teams To Score - Second Half",
                "values": [
                  {"value": "Yes", "odd": "3.40"},
                  {"value": "No", "odd": "1.29"}
                ]
              },
              {
                "id": 21,
                "name": "Odd/Even",
                "values": [
                  {"value": "Odd", "odd": "1.85"},
                  {"value": "Even", "odd": "1.85"}
                ]
              },
              {
                "id": 22,
                "name": "Odd/Even - First Half",
                "values": [
                  {"value": "Odd", "odd": "2.05"},
                  {"value": "Even", "odd": "1.70"}
                ]
              },
              {
                "id": 24,
                "name": "Results/Both Teams Score",
                "values": [
                  {"value": "Home/Yes", "odd": "3.40"},
                  {"value": "Draw/Yes", "odd": "5.00"},
                  {"value": "Away/Yes", "odd": "8.25"},
                  {"value": "Home/No", "odd": "2.80"},
                  {"value": "Draw/No", "odd": "10.50"},
                  {"value": "Away/No", "odd": "7.75"}
                ]
              },
              {
                "id": 25,
                "name": "Result/Total Goals",
                "values": [
                  {"value": "Home/Over 3.5", "odd": "4.33"},
                  {"value": "Draw/Over 3.5", "odd": "12.00"},
                  {"value": "Away/Over 3.5", "odd": "14.00"},
                  {"value": "Home/Under 3.5", "odd": "2.40"},
                  {"value": "Draw/Under 3.5", "odd": "4.75"},
                  {"value": "Away/Under 3.5", "odd": "5.50"},
                  {"value": "Home/Over 1.5", "odd": "2.00"},
                  {"value": "Away/Over 1.5", "odd": "6.00"},
                  {"value": "Draw/Over 1.5", "odd": "5.00"},
                  {"value": "Draw/Under 1.5", "odd": "10.50"},
                  {"value": "Home/Under 1.5", "odd": "6.75"},
                  {"value": "Away/Under 1.5", "odd": "11.50"},
                  {"value": "Home/Over 4.5", "odd": "7.00"},
                  {"value": "Draw/Over 4.5", "odd": "41.00"},
                  {"value": "Away/Over 4.5", "odd": "21.00"},
                  {"value": "Home/Under 4.5", "odd": "2.00"},
                  {"value": "Draw/Under 4.5", "odd": "3.90"},
                  {"value": "Away/Under 4.5", "odd": "5.00"},
                  {"value": "Home/Over 2.5", "odd": "2.50"},
                  {"value": "Draw/Over 2.5", "odd": "12.00"},
                  {"value": "Away/Over 2.5", "odd": "7.25"},
                  {"value": "Home/Under 2.5", "odd": "4.00"},
                  {"value": "Draw/Under 2.5", "odd": "4.75"},
                  {"value": "Away/Under 2.5", "odd": "8.50"},
                  {"value": "Home/Over 0.5", "odd": "1.63"},
                  {"value": "Draw/Over 0.5", "odd": "5.00"},
                  {"value": "Away/Over 0.5", "odd": "4.33"},
                  {"value": "Draw/Under 0.5", "odd": "10.50"}
                ]
              },
              {
                "id": 43,
                "name": "Home Team Score a Goal",
                "values": [
                  {"value": "Yes", "odd": "1.16"},
                  {"value": "No", "odd": "5.00"}
                ]
              },
              {
                "id": 44,
                "name": "Away Team Score a Goal",
                "values": [
                  {"value": "Yes", "odd": "1.53"},
                  {"value": "No", "odd": "2.35"}
                ]
              },
              {
                "id": 45,
                "name": "Corners Over Under",
                "values": [
                  {"value": "Over 9.5", "odd": "1.57"},
                  {"value": "Under 9.5", "odd": "2.05"},
                  {"value": "Over 10.5", "odd": "1.95"},
                  {"value": "Under 10.5", "odd": "1.75"},
                  {"value": "Over 11.5", "odd": "2.60"},
                  {"value": "Under 11.5", "odd": "1.44"},
                  {"value": "Over 8.5", "odd": "1.31"},
                  {"value": "Under 8.5", "odd": "3.20"},
                  {"value": "Over 12.5", "odd": "3.70"},
                  {"value": "Under 12.5", "odd": "1.25"}
                ]
              }
            ]
          }
        ]
      }
    ]
  };
}
