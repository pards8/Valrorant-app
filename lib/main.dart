import 'package:flutter/material.dart';
import 'package:hello/WorldTIme/pages/home.dart';
import 'package:hello/WorldTIme/pages/loading.dart';
import 'package:hello/WorldTIme/pages/choose_location.dart';

void main() => runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),
    }
));

