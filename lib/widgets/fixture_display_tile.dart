import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:fsearch/controllers/match_controller.dart';
import 'package:fsearch/controllers/odds_controller.dart';
import 'package:fsearch/models/bet_info.dart';

import 'package:fsearch/widgets/choose_odd.dart';

class FixtureDisplayTile extends StatelessWidget {
  FixtureDisplayTile({
    Key? key,
    required this.betInfo,
    required this.index,
  }) : super(key: key);
  final BetInfo betInfo;
  final int index;
  final width = Get.size.width;

  final OddsController oCxt = Get.find<OddsController>();
  final MatchController mCxt = Get.find<MatchController>();

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
                  width: width * 0.15,
                  child: Text(betInfo.soccer.teams.home.name)),
              SizedBox(
                width: width * 0.02,
              ),
              SizedBox(
                child: Image.network(
                  betInfo.soccer.teams.home.logo,
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
                  betInfo.soccer.teams.away.logo,
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
                child: Text(betInfo.soccer.teams.away.name),
              ),
              SizedBox(
                width: width * 0.01,
              ),
              IconButton(
                  onPressed: () {
                    Get.to(ChooseOdd(soccer: betInfo.soccer, count: index));
                    oCxt.fetchOddData(betInfo.soccer.fixture.id.toString());
                  },
                  icon: const Icon(Icons.arrow_drop_down_circle)),
              SizedBox(
                width: width * 0.04,
              ),
              Text(betInfo.bets?.values[0].odd ?? ''),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(betInfo.bets?.name ?? ' no data yet'),
              Text(betInfo.bets?.values[0].value ?? ''),
            ],
          )
        ],
      ),
    );
  }
}
