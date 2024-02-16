import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'oil_battery_screen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Center(child: Text('VAAHANAA',style: TextStyle(fontWeight: FontWeight.bold),)),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Get.to(OilAndBatteryScreen());
          },
          child: Container(
            margin: EdgeInsets.only(top: 16, left: 16),
            child: Icon(Icons.circle_rounded),
          ),
        ),
      ),
    );
  }
}