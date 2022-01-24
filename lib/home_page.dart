import 'package:flutter/material.dart';
import 'package:fsearch/widgets/fixture_tile.dart';
import 'package:fsearch/widgets/search_tile.dart';
import 'package:fsearch/controllers/team_controller.dart';
import 'package:get/get.dart';

import 'controllers/match_controller.dart';
import 'controllers/odds_controller.dart';
import 'widgets/fixture_display.dart';
//all controllers are added here
class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final MatchController mCxt = Get.put(MatchController());
  final TeamController tCxt = Get.put(TeamController());
  final OddsController oCxt = Get.put(OddsController());
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('API Search', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            const SizedBox(
              height: 20,
            ),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                height: 42,
                margin: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                  border: Border.all(color: Colors.black26),
                ),
                child: TextField(
                  controller: myController,
                  textAlignVertical: TextAlignVertical.center,
                  textAlign: TextAlign.left,
                  onSubmitted: (text) {
                    tCxt.fetchTeams(text);
                    tCxt.switchToFixture.toggle();
                  },
                  decoration: InputDecoration(
                    suffixIcon: myController.text.isNotEmpty
                        ? GestureDetector(
                            child: const Icon(
                              Icons.close,
                            ),
                            onTap: () {
                              myController.clear();
                              Get.focusScope;
                            },
                          )
                        : null,
                    border: InputBorder.none,
                    icon: const Icon(
                      Icons.search,
                      size: 30,
                    ),
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            Obx(() {
              if (mCxt.isLoading.value) {
                return const Center(child: CircularProgressIndicator());
              }
              return ListView.separated(
                  separatorBuilder: (buildContext, index) =>
                      const Divider(indent: 10),
                  primary: false,
                  shrinkWrap: true,
                  itemBuilder: (buildContext, index) => FixtureTile(
                        soccer: mCxt.matchList[index],
                      ),
                  itemCount: mCxt.matchList.length);
            }),
            const SizedBox(
              height: 20,
            ),
            FixtureDisplay(),
            Obx(() {
              if (tCxt.isLoading.value) {
                return const Center(child: CircularProgressIndicator());
              } else {
                return Visibility(
                  visible: tCxt.switchToFixture.value,
                  child: ListView.builder(
                    primary: false,
                    shrinkWrap: true,
                    itemBuilder: (buildContext, index) => SearchTile(
                      teamInfo: tCxt.teamList[index],
                    ),
                    itemCount: tCxt.teamList.length,
                  ),
                );
              }
            }),
            const SizedBox(
              height: 20,
            ),
          ]),
        ),
      ),
    );
  }
}
