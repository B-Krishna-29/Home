import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  String _selectedOption = 'Edit Orders';

  void _onOptionSelected(String option) {
    setState(() {
      _selectedOption = option;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart Page'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Options',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Edit Orders'),
              onTap: () {
                _onOptionSelected('Edit Orders');
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Delete Orders'),
              onTap: () {
                _onOptionSelected('Delete Orders');
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: _selectedOption == 'Edit Orders'
            ? _buildEditOrdersContent()
            : _buildDeleteOrdersContent(),
      ),
    );
  }

  Widget _buildEditOrdersContent() {
    // Replace this with the content for edit orders
    return Text('Edit Orders Content');
  }

  Widget _buildDeleteOrdersContent() {
    // Replace this with the content for delete orders
    return Text('Delete Orders Content');
  }
}
