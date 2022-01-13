import 'package:flutter/material.dart';
import 'package:fsearch/controllers/odds_controller.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:fsearch/controllers/match_controller.dart';

import 'package:get/get.dart';

class ChooseOdd extends StatelessWidget {
  ChooseOdd({Key? key}) : super(key: key);
  final OddsController oCxt = Get.find<OddsController>();

  @override
  Widget build(BuildContext context) {
    var indx;
    return Scaffold(
      appBar: AppBar(
        title: const Text('SELECT YOUR STAKE OPTION'),
      ),
      body: ListView.builder(
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
              itemCount: oCxt.oddList[0].bookmakers[0].bets[indx].values.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 2,
              ),
              itemBuilder: (contxt, index) {
                return Card(
                  margin: const EdgeInsets.all(4.0),
                  color: Colors.green[200],
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 12.0, top: 6.0, bottom: 2.0),
                    child: Center(
                        child: Column(
                      children: [
                        Text(
                          oCxt.oddList[0].bookmakers[0].bets[indx].values[index]
                              .value!,
                          style: const TextStyle(
                              fontSize: 14, color: Colors.black54),
                        ),
                        Text(
                          oCxt.oddList[0].bookmakers[0].bets[indx].values[index]
                              .odd,
                          style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black54,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )),
                  ),
                );
              },
            ),
          );
        },
        shrinkWrap: true,
      ),
    );
  }
}
  




// Widget gridHeader(){
//     return new ListView.builder(itemCount: listHeader.length,itemBuilder: (context, index) {
//       return new StickyHeader(
//         header: new Container(
//           height: 38.0,
//           color: Colors.white,
//           padding: new EdgeInsets.symmetric(horizontal: 12.0),
//           alignment: Alignment.centerLeft,
//           child: new Text(listHeader[index],
//             style: const TextStyle(color: Colors.purple, fontSize: 20,fontWeight: FontWeight.bold),
//           ),
//         ),
//         content: Container(
//           child: GridView.builder(
//             shrinkWrap: true,
//             physics: NeverScrollableScrollPhysics(),
//             itemCount: listTitle.length,
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 1,),
//             itemBuilder: (contxt, indx){
//               return Card(
//                 margin: EdgeInsets.all(4.0),
//                 color: Colors.purpleAccent,
//                 child: Padding(
//                   padding: const EdgeInsets.only(left: 12.0, top: 6.0, bottom: 2.0),
//                   child: Center(child: Text(listTitle[indx], style: TextStyle(fontSize: 14, color: Colors.black54),)),
//                 ),
//               );
//             },
//           ),
//         ),
//       );
//     },
//       shrinkWrap: true,
//     );
//   }
// }
