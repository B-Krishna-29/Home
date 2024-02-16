import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Account Page'),
      // ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Handle add address button tap
                },
                child: Text('Address'),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                onPressed: () {
                  // Handle add address button tap
                },
                child: Text('Add Address'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Handle add address button tap
                },
                child: Text('Name'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Handle add address button tap
                },
                child: Text('Mobile Number'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Handle payment and card details button tap
                },
                child: Text('Payment and Card Details'),
              ),
              SizedBox(height: 20,),
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
              SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}
