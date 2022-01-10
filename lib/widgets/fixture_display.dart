import 'package:flutter/material.dart';
import 'package:fsearch/controllers/match_controller.dart';
import 'package:get/get.dart';

import 'fixture_display_tile.dart';
import 'fixture_methods.dart';

class FixtureDisplay extends StatelessWidget {
  FixtureDisplay({Key? key}) : super(key: key);
  final MatchController mCxt = Get.find<MatchController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        betSectionTitle(),
        const SizedBox(height: 20),
        Obx(() => ListView.separated(
            separatorBuilder: (buildContext, index) =>
                const Divider(indent: 10),
            primary: false,
            shrinkWrap: true,
            itemBuilder: (buildContext, index) => FixtureDisplayTile(
                  soccer: mCxt.selectedFixture[index],
                  index: index,
                ),
            itemCount: mCxt.selectedFixture.length)),
      ],
    );
  }
}
