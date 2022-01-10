import 'package:flutter/material.dart';
import 'package:fsearch/controllers/match_controller.dart';
import 'package:fsearch/models/soccer_match.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class FixtureTile extends StatelessWidget {
  final SoccerMatch soccer;
  FixtureTile({
    Key? key,
    required this.soccer,
  }) : super(key: key);
  final width = Get.size.width;
  final k = DateFormat("yyyy-MM-dd");
  final f = DateFormat.yMMMEd();
  final MatchController mCxt = Get.find<MatchController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
      child: InkWell(
        onTap: () {
          mCxt.selectedFixture.assign(soccer);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: width * 0.01,
            ),
            SizedBox(
              width: width * 0.15,
              child: Text(soccer.teams.home.name),
            ),
            SizedBox(
              width: width * 0.01,
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
              width: width * 0.01,
            ),
            Text(k.format(DateTime.parse(soccer.fixture.date))),
            SizedBox(
              width: width * 0.01,
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
              width: width * 0.01,
            ),
            SizedBox(
              width: width * 0.15,
              child: Text(soccer.teams.away.name),
            ),
          ],
        ),
      ),
    );
  }
}
