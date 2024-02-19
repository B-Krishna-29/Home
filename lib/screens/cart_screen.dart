import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import '';
import '../controllers/cart_controller.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CartController cartController = Get.find();

    return Scaffold(
      body: GetBuilder<CartController>(
        init: cartController,
        builder: (controller) {
          return ListView.builder(
            itemCount: controller.cartItems.length,
            itemBuilder: (context, index) {
              return CardWidget(
                product: controller.cartItems[index],
                increaseQuantity: cartController.increaseQuantity,
                decreaseQuantity: cartController.decreaseQuantity,
              );
            },
          );
        },
      ),
    );
  }
}


class CardWidget extends StatelessWidget {
  final Map<String, dynamic> product;
  final Function(Map<String, dynamic>) increaseQuantity;
  final Function(Map<String, dynamic>) decreaseQuantity;

  const CardWidget({
    Key? key,
    required this.product,
    required this.increaseQuantity,
    required this.decreaseQuantity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image on the left
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(

                  image: NetworkImage(product['imageUrl']),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Product name
                  Text(
                    product['name'],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  // Product description
                  Text(
                    product['description'],
                    style: TextStyle(fontSize: 16.0),
                  ),
                  SizedBox(height: 8.0),
                  // Increase and decrease quantity buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(Icons.remove),
                        onPressed: () {
                          // Decrease quantity
                          print("I'm Decreased");
                          decreaseQuantity(product);
                        },
                      ),
                      Text(
                        '${product['quantity']}',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {
                          // Increase quantity
                          print("I'm Increased");
                          increaseQuantity(product);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


