import 'package:flutter/material.dart';
//import 'screens/payment_screen.dart';
import 'package:get/get.dart';
import 'controllers/cart_controller.dart';
import 'fields/home.dart';

void main() {
  Get.put(CartController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vaahanaa',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}





