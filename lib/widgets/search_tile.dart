import 'package:flutter/material.dart';
import 'package:fsearch/controllers/match_controller.dart';

import 'package:fsearch/models/team.dart';
import 'package:get/get.dart';

class SearchTile extends StatelessWidget {
  SearchTile({
    Key? key,
    required this.team,
  }) : super(key: key);
  final TeamInfo team;
  final MatchController mCxt = Get.find<MatchController>();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        mCxt.fetchFixtures(team.team.id.toString());
        mCxt.switchToFixture(true);
      },
      child: ListTile(
        leading: Image.network(
          team.team.logo,
          fit: BoxFit.cover,
          width: 30,
          height: 30,
        ),
        title: Text(
          team.team.name,
        ),
        subtitle: Text(team.team.country),
      ),
    );
  }
}
