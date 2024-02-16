import 'package:flutter/material.dart';
import 'home_page.dart';

class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Payment Screen',style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showPaymentAlert(context);
              },
              child: Text('Pay Now'),
            ),
          ],
        ),
      ),
    );
  }
}

void showPaymentAlert(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Payment Successful"),
        content: Text("Your payment is successful."),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Pop the alert dialog
              Navigator.of(context).pop(); // Pop the payment screen
              // Navigate back to the home screen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
            child: Text("OK"),
          ),
        ],
      );
    },
  );
}
