import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  String selectedCategory = 'Oil';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Categories'),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            _scaffoldKey.currentState!.openDrawer();
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Categories',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Oil'),
              onTap: () {
                setState(() {
                  selectedCategory = 'Oil';
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Battery'),
              onTap: () {
                setState(() {
                  selectedCategory = 'Battery';
                });
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Row(
        children: [
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: selectedCategory == 'Oil'
                  ? [
                CategoryCard(
                  categoryName: 'Parashoot',
                  imageUrl: 'assets/images/parashoot.jpg',
                ),
                CategoryCard(
                  categoryName: 'Vatika',
                  imageUrl: 'assets/images/vatika.jpg',
                ),
                CategoryCard(
                  categoryName: 'Kashking',
                  imageUrl: 'assets/images/kashking.jpg',
                ),
                CategoryCard(
                  categoryName: 'Ashwini',
                  imageUrl: 'assets/images/ashwini.jpg',
                ),
              ]
                  : selectedCategory == 'Battery'
                  ? [
                CategoryCard(
                  categoryName: 'Everyday',
                  imageUrl: 'assets/images/everyday.jpg',
                ),
                CategoryCard(
                  categoryName: 'Okaya',
                  imageUrl: 'assets/images/okaya.jpg',
                ),
                CategoryCard(
                  categoryName: 'Duracell',
                  imageUrl: 'assets/images/duracell.jpg',
                ),
                CategoryCard(
                  categoryName: 'Dell',
                  imageUrl: 'assets/images/dell.jpg',
                ),
              ]
                  : [],
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String categoryName;
  final String imageUrl;

  const CategoryCard({
    required this.categoryName,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to respective category screen
      },
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imageUrl,
              height: 80, // Decreased card widget size
              width: 80, // Decreased card widget size
              fit: BoxFit.cover,
            ),
            SizedBox(height: 5), // Adjusted spacing
            Text(
              categoryName,
              style: TextStyle(
                fontSize: 14, // Decreased font size
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
