import 'package:flutter/material.dart';
import 'package:fsearch/models/soccer_match.dart';
import 'package:get/get.dart';

class FixtureTile extends StatelessWidget {
  final SoccerMatch soccer;
  FixtureTile({
    Key? key,
    required this.soccer,
  }) : super(key: key);
  final width = Get.size.width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
      child: ListTile(
        leading: Image.network(
          soccer.teams.home.logo,
          fit: BoxFit.cover,
          width: 30,
          height: 30,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: width * 0.25,
              child: Text(soccer.teams.home.name),
            ),
            SizedBox(
              width: width * 0.01,
            ),
            const Text('Vs'),
            SizedBox(
              width: width * 0.01,
            ),
            SizedBox(
              width: width * 0.25,
              child: Text(soccer.teams.away.name),
            ),
          ],
        ),
        trailing: Image.network(
          soccer.teams.away.logo,
          fit: BoxFit.cover,
          width: 30,
          height: 30,
        ),
        subtitle: Text(soccer.fixture.date),
      ),
    );
  }
}
