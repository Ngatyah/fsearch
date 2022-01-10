import 'package:flutter/material.dart';
import 'package:get/get.dart';

Container betSectionTitle() {
  final width = Get.size.width;
  return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 50,
      width: double.infinity,
      color: Colors.amberAccent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            width: width * 0.27,
            child: Row(
              children: const [
                Icon(Icons.home, size: 30, color: Colors.blueGrey),
                SizedBox(
                  width: 8,
                ),
                Text('Home'),
              ],
            ),
          ),
          SizedBox(width: width * 0.10),
          SizedBox(
            width: width * 0.17,
            child: Row(
              children: const [
                Icon(Icons.airplane_ticket, size: 30, color: Colors.blueGrey),
                SizedBox(
                  width: 5,
                ),
                Text('Away'),
              ],
            ),
          ),
          SizedBox(
            width: width * 0.15,
            child: Column(
              children: const [
                Icon(Icons.batch_prediction, size: 30, color: Colors.blueGrey),
                Text('Stake'),
              ],
            ),
          ),
          SizedBox(
            width: width * 0.08,
            child: Column(
              children: const [
                Icon(Icons.money, size: 30, color: Colors.blueGrey),
                Text('Odds'),
              ],
            ),
          ),
          SizedBox(
            width: width * 0.15,
            child: Column(
              children: const [
                Icon(Icons.cloud_queue_outlined,
                    size: 30, color: Colors.blueGrey),
                Text('Actions'),
              ],
            ),
          )
        ],
      ));
}
