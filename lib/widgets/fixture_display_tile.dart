import 'package:flutter/material.dart';
import 'package:fsearch/controllers/odds_controller.dart';
import 'package:fsearch/widgets/choose_odd.dart';
import 'package:get/get.dart';

import 'package:fsearch/controllers/match_controller.dart';
import 'package:fsearch/models/soccer_match.dart';

class FixtureDisplayTile extends StatelessWidget {
  FixtureDisplayTile({
    Key? key,
    required this.soccer,
    required this.index,
  }) : super(key: key);
  final SoccerMatch soccer;
  final int index;
  final width = Get.size.width;
  final MatchController mCxt = Get.find<MatchController>();
  final OddsController oCxt = Get.find<OddsController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                  width: width * 0.15, child: Text(soccer.teams.home.name)),
              SizedBox(
                width: width * 0.02,
              ),
              SizedBox(
                child: Image.network(
                  soccer.teams.home.logo,
                  fit: BoxFit.cover,
                  width: 30,
                  height: 30,
                ),
              ),
              SizedBox(
                width: width * 0.05,
              ),
              const Text(
                'VS',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(
                width: width * 0.05,
              ),
              SizedBox(
                child: Image.network(
                  soccer.teams.away.logo,
                  fit: BoxFit.cover,
                  width: 30,
                  height: 30,
                ),
              ),
              SizedBox(
                width: width * 0.02,
              ),
              SizedBox(
                width: width * 0.15,
                child: Text(soccer.teams.away.name),
              ),
              SizedBox(
                width: width * 0.01,
              ),
              IconButton(
                  onPressed: () {
                    Get.to(ChooseOdd());
                    oCxt.fetchOddData(soccer.fixture.id.toString());
                  },
                  icon: const Icon(Icons.arrow_drop_down_circle)),
              SizedBox(
                width: width * 0.04,
              ),
              const Text('3.45'),
              SizedBox(
                width: width * 0.01,
              ),
              SizedBox(
                width: width * 0.15,
                child: IconButton(
                    onPressed: () {
                      mCxt.deleteSelectedMatch(index);
                    },
                    icon: const Icon(
                      Icons.delete,
                      size: 20,
                      color: Colors.red,
                    )),
              )
            ],
          ),
          Text('${soccer.teams.away.name} Wins 2:1')
        ],
      ),
    );
  }
}
