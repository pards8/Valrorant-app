import 'package:flutter/material.dart';
import 'package:hello/WorldTIme/pages/choose_location.dart';
import 'package:hello/WorldTIme/pages/loading.dart';
import 'package:hello/pages/AddAgent.dart';
import 'package:hello/pages/Dashboard.dart';
import 'package:hello/pages/ListItems.dart';
import 'package:hello/WorldTIme/pages/home.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/': (context) => Loading(),
      '/home' : (context) => Home(),
      '/location': (context) => ChooseLocation(),
    },

  ));
}
