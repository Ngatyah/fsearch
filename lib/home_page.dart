import 'package:flutter/material.dart';
import 'package:fsearch/search_tile.dart';
import 'package:fsearch/team_controller.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  TeamController tCxt = Get.put(TeamController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'API Search',
        ),
        centerTitle: true,
      ),
      body: Padding(
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
                // controller: controller,
                textAlignVertical: TextAlignVertical.center,
                textAlign: TextAlign.left,
                onChanged: tCxt.fetchMatches,
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
          ListView.builder(
            primary: false,
            shrinkWrap: true,
            itemBuilder: (buildContext, index) => SearchTile(
              team: tCxt.teamList[index],
            ),
            itemCount: 2,
          )
        ]),
      ),
    );
  }
}
