import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Dummy data for demonstration
    String name = 'John Doe';
    String address = '123 Main St, City, Country';
    String mobileNumber = '+1234567890';

    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Account Page'),
      // ),
      body: Center(

        child: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Card for Name, Address, and Mobile Number
              CardWidget(
                name: name,
                address: address,
                mobileNumber: mobileNumber,
              ),
              SizedBox(height: 20),

              // Other buttons
              ElevatedButton(
                onPressed: () {
                  // Handle payment and card details button tap
                },
                child: Text('Payment and Card Details'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Handle payment history button tap
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(50, 50), // Set the minimum size of the button
                  padding: EdgeInsets.symmetric(horizontal: 50),
                ),
                child: Text('Payment History'),
              ),
              SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final String name;
  final String address;
  final String mobileNumber;
  final Color cardcolor;

  const CardWidget({
    Key? key,
    required this.name,
    required this.address,
    required this.mobileNumber,
    this.cardcolor = Colors.orange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.orange,
      child: Padding(

        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text(
              'Name: $name',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 10),
            Text(
              'Address: $address',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 10),
            Text(
              'Mobile Number: $mobileNumber',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
