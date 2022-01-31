import 'package:flutter/material.dart';

import 'package:fsearch/controllers/odds_controller.dart';
import 'package:get/get.dart';

import 'fixture_display_tile.dart';
import 'fixture_methods.dart';

//Display FIXTURE AND THEIR ODDS
class FixtureDisplay extends StatelessWidget {
  FixtureDisplay({Key? key}) : super(key: key);

  final OddsController oCxt = Get.find<OddsController>();
  final myController = TextEditingController();

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
                  betInfo: oCxt.selectedBet[index],
                  index: index,
                ),
            itemCount: oCxt.selectedBet.length)),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            const Text(
              'Total Odds: ',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.lightGreen,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: 20,
            ),
            Obx(() => Text(
                  oCxt.totalOdds().toStringAsFixed(2),
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                )),
          ]),
        ),
        const SizedBox(
          height: 15,
        ),
        Obx(() => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: !oCxt.showOddPrice.value
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          ' Price: ',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.lightGreen,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            height: 42,
                            width: 70,
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
                              onSubmitted: (text) {},
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                            )),
                        const SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.green,
                                textStyle: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                            onPressed: () {
                              oCxt.oddPrice.value =
                                  double.parse(myController.text);
                              oCxt.showOddPrice.value = true;
                            },
                            child: const Text(
                              'OK',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ))
                      ],
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          'Price: ',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.lightGreen,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          oCxt.oddPrice.value.toStringAsFixed(2),
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
            )),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.green,
                textStyle:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            onPressed: () {
              oCxt.oddPrice.value = double.parse(myController.text);
              oCxt.showOddPrice.value = true;
            },
            child: const Text(
              'SUBMIT',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ))
      ],
    );
  }
}
