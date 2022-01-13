import 'package:flutter/material.dart';
import 'package:fsearch/controllers/match_controller.dart';

import 'package:get/get.dart';

class ChooseOdd extends StatelessWidget {
  ChooseOdd({Key? key}) : super(key: key);
  final MatchController mCxt = Get.find<MatchController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('Hello')));
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
