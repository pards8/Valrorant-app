import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ValorantGuideApp(),
  ));
}

class ValorantGuideApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 15, 25, 35),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 15, 25, 35),
          centerTitle: true,
          title: Text(
            'Valorant Guide',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 236, 232, 225),
            ),
          ),
          bottom: TabBar(
            indicatorColor: Colors.red,
            labelColor: Colors.red,
            unselectedLabelColor: Colors.white,
            labelStyle: TextStyle(fontWeight: FontWeight.bold),
            tabs: [
              Tab(text: 'Lineups'),
              Tab(text: 'Agent Draft'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Lineups Tab Content
            Center(
              child: Text(
                'Lineups Content Here',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            // Agent Draft Tab Content
            Center(
              child: Text(
                'Agent Draft Content Here',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
