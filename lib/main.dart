import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold (
      appBar: AppBar(
        title: Text ('Valorant App' , style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            shadows: [
            Shadow(
            blurRadius:10.0,
            color: Colors.black,
            offset: Offset(2.0,2.0) ),
]
        ),),
        backgroundColor: Colors.redAccent[400],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('John Adrian S. Pardo', style: TextStyle(
                color: Colors.redAccent,
                fontSize: 20
            ),
            ),
            Text('Map Line Ups', style: TextStyle(
                color: Colors.redAccent,
                fontSize: 20),
            ),
            Text('Agent Drafts', style: TextStyle(color:
                Colors.redAccent,
                fontSize: 20),
            ),
          ],
        ),
    ),
  )));
}
