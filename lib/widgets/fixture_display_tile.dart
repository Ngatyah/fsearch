import 'package:flutter/material.dart';
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

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(width: width * 0.15, child: Text(soccer.teams.home.name)),
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
              onPressed: () {}, icon: const Icon(Icons.arrow_drop_down_circle)),
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
    );
  }
}
