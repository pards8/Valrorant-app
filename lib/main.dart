import 'package:flutter/material.dart';
import 'package:hello/pages/AddAgent.dart';
import 'package:hello/pages/Dashboard.dart';
import 'package:hello/pages/ListItems.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/': (context) => Listitems(),
      '/add' : (context) => AddAgent()
    },

  ));
}
