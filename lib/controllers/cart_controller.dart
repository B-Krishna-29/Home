import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  var cartItems = [
    {
      'name': 'Oil',
      'description': 'High-quality engine oil',
      'imageUrl': 'https://via.placeholder.com/150',
      'quantity': 1,
    },
    {
      'name': 'Battery',
      'description': 'Long-lasting car battery',
      'imageUrl': 'https://via.placeholder.com/150',
      'quantity': 2,
    },
  ].obs;


  void increaseQuantity(Map<String, dynamic> product) {
    product['quantity']++;
  }

  void decreaseQuantity(Map<String, dynamic> product) {
    if (product['quantity'] > 1) {
      product['quantity']--;
    }
  }
}
