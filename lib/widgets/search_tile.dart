import 'package:flutter/material.dart';
import 'package:fsearch/controllers/match_controller.dart';
import 'package:fsearch/controllers/team_controller.dart';

import 'package:fsearch/models/team.dart';
import 'package:get/get.dart';

class SearchTile extends StatelessWidget {
  SearchTile({
    Key? key,
    required this.teamInfo,
  }) : super(key: key);
  final TeamInfo teamInfo;
  final MatchController mCxt = Get.find<MatchController>();
  final TeamController tCxt = Get.find();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        mCxt.fetchFixtures(teamInfo.team.id.toString());
        tCxt.switchToFixture.toggle();
        tCxt.teamList == [];
      },
      child: ListTile(
        leading: Image.network(
          teamInfo.team.logo,
          fit: BoxFit.cover,
          width: 30,
          height: 30,
        ),
        title: Text(
          teamInfo.team.name,
        ),
        subtitle: Text(teamInfo.team.country),
      ),
    );
  }
}
