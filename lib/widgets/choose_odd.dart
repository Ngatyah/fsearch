import 'package:flutter/material.dart';
import 'package:fsearch/models/bet_info.dart';
import 'package:get/get.dart';
import 'package:sticky_headers/sticky_headers.dart';

import 'package:fsearch/controllers/odds_controller.dart';
import 'package:fsearch/models/odds.dart';
import 'package:fsearch/models/soccer_match.dart';

class ChooseOdd extends StatelessWidget {
  ChooseOdd({
    Key? key,
    required this.soccer,
    required this.count,
  }) : super(key: key);
  final int count;
  final SoccerMatch soccer;
  final OddsController oCxt = Get.find<OddsController>();
  final width = Get.size.width;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: width * 0.01,
            ),
            SizedBox(
              width: width * 0.15,
              child: const Text('HOME'),
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
              width: width * 0.1,
            ),
            const Text('VS'),
            SizedBox(
              width: width * 0.1,
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
              child: const Text('AWAY'),
            ),
          ],
        ),
      ),
      body: oCxt.oddList.isEmpty
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: oCxt.oddList[0].bookmakers[0].bets.length,
              itemBuilder: (context, indx) {
                return StickyHeader(
                  header: Container(
                    height: 38,
                    color: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      oCxt.oddList[0].bookmakers[0].bets[indx].name,
                      style: const TextStyle(
                          color: Colors.black54,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  content: GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount:
                        oCxt.oddList[0].bookmakers[0].bets[indx].values.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 2,
                    ),
                    itemBuilder: (contxt, index) {
                      return InkWell(
                        onTap: () {
                          oCxt.selectedOdd.assign(Bets(
                            id: oCxt.oddList[0].bookmakers[0].bets[indx].id,
                            name: oCxt.oddList[0].bookmakers[0].bets[indx].name,
                            values: [
                              Values(
                                  odd: oCxt.oddList[0].bookmakers[0].bets[indx]
                                      .values[index].odd,
                                  value: oCxt.oddList[0].bookmakers[0]
                                      .bets[indx].values[index].value!)
                            ],
                          ));
                        },
                        child: Obx(() => Card(
                              margin: const EdgeInsets.all(4.0),
                              color: Colors.green[200],
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 12.0, top: 6.0, bottom: 2.0),
                                child: Center(
                                    child: Column(
                                  children: [
                                    Text(
                                      oCxt.oddList[0].bookmakers[0].bets[indx]
                                          .values[index].value!,
                                      style: const TextStyle(
                                          fontSize: 14, color: Colors.black54),
                                    ),
                                    Text(
                                      oCxt.oddList[0].bookmakers[0].bets[indx]
                                          .values[index].odd,
                                      style: const TextStyle(
                                          fontSize: 16,
                                          color: Colors.black54,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                )),
                              ),
                            )),
                      );
                    },
                  ),
                );
              },
              shrinkWrap: true,
            ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.green,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        onPressed: () {
          oCxt.selectedBet[count] = (BetInfo(
              soccer: soccer,
              bets: Bets(
                id: oCxt.selectedOdd[0].id,
                name: oCxt.selectedOdd[0].name,
                values: [
                  Values(
                      odd: oCxt.selectedOdd[0].values[0].odd,
                      value: oCxt.selectedOdd[0].values[0].value!)
                ],
              )));
        },
        label: SizedBox(
          width: Get.size.width * 0.8,
          child: Obx(() => oCxt.selectedOdd.isNotEmpty
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(oCxt.selectedOdd[0].name),
                    Text(oCxt.selectedOdd[0].values[0].value!),
                    Text(oCxt.selectedOdd[0].values[0].odd),
                  ],
                )
              : const Text('No Option Selected Yet')),
        ),
      ),
    );
  }
}
 

  
