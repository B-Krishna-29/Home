import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Hide back button
        titleSpacing: 0, // Remove spacing between search bar and edge
        flexibleSpace: Container( // Custom app bar content
          padding: EdgeInsets.symmetric(horizontal: 16),
          alignment: Alignment.centerLeft,
          child: SizedBox(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search...',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide.none,

                ),enabledBorder: UnderlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(
                    vertical: 16, horizontal: 16),
                suffixIcon: Icon(Icons.search),
              ),
              onTap: () {
                // Handle search bar tap
              },
            ),
            height: 100,
          ),


        ),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'Oil'),
            Tab(text: 'Battery'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  SizedBox(height: 20),
                  Text(
                    'Upcoming Orders (Oil):',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 200, // Adjust height as needed
                    color: Colors.grey[200],
                    child: Center(
                      child: Text('Calendar - Oil'),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Credit Due (Oil):',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Enter credit due amount for Oil here...',
                    // Replace with actual credit due value
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 150,
                          child: Card(
                            child: ListTile(
                              title: Center(child: Text('Our Products - Oil')),
                              onTap: () {
                                // Handle tap on Our Products card for Oil
                              },
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          height: 150,
                          child: Card(
                            child: ListTile(
                              title: Center(child: Text('EV - Oil')),
                              onTap: () {
                                // Handle tap on EV card for Oil
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Upcoming Orders (Battery):',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 200, // Adjust height as needed
                    color: Colors.grey[200],
                    child: Center(
                      child: Text('Calendar - Battery'),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Credit Due (Battery):',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Enter credit due amount for Battery here...',
                    // Replace with actual credit due value
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 150,
                          child: Card(
                            child: ListTile(
                              title: Center(
                                  child: Text('Our Products - Battery')),
                              onTap: () {
                                // Handle tap on Our Products card for Battery
                              },
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          height: 150,
                          child: Card(
                            child: ListTile(
                              title: Center(child: Text('EV - Battery')),
                              onTap: () {
                                // Handle tap on EV card for Battery
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
