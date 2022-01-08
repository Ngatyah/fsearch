import 'package:flutter/material.dart';
import 'package:fsearch/widgets/search_tile.dart';
import 'package:fsearch/controllers/team_controller.dart';
import 'package:get/get.dart';

import 'controllers/match_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final MatchController mCxt = Get.put(MatchController());
  TeamController tCxt = Get.put(TeamController());

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
                  textAlignVertical: TextAlignVertical.center,
                  textAlign: TextAlign.left,
                  onSubmitted: (text) {
                    tCxt.fetchTeams(text);
                    mCxt.switchToFixture(false);
                  },
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(
                      Icons.search,
                      size: 30,
                    ),
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            tCxt.isLoading.value == true
                ? Center(child: Obx(() => const CircularProgressIndicator()))
                : Obx(() => ListView.builder(
                      primary: false,
                      shrinkWrap: true,
                      itemBuilder: (buildContext, index) => SearchTile(
                        team: tCxt.teamList[index],
                      ),
                      itemCount: tCxt.teamList.length,
                    )),
            const SizedBox(
              height: 20,
            ),
            const Text('See results')
          ]),
        ),
      ),
    );
  }
}
