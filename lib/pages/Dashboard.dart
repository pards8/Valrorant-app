import 'package:flutter/material.dart';




class  Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[70],
      appBar: AppBar(
        title: Text('Valorant App', style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
          color: Colors.white,
          shadows: [
            Shadow(blurRadius: 10.0,
              color: Colors.black,
              offset: Offset(2.0,2.0),
            ),
          ],
        ),),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'User Profile',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10), // spacing between text and icon
                Icon(
                  Icons.person,
                  size: 100,
                ),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Name:', style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                ),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('John Adrian S. Pardo', style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                ),
                ),
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Email', style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                ),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('pardojuan811@gmail.com', style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                ),
                ),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Company', style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                ),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('princesstumbaga2@gmail.com', style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                ),
                ),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Contact Number', style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                ),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('09504306245', style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                ),
                ),
              ],
            ),
          ),

          // LOGOUT BUTTON
          SizedBox(height: 20),
          Center(
            child: OutlinedButton(
              onPressed: () {
                // Logout action here
              },
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.deepPurple),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
              ),
              child: Text(
                'LOGOUT',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.deepPurple,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}