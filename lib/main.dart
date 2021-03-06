import 'package:flutter/material.dart';
import 'package:worldtimeapp/pages/choose_location.dart';
import 'package:worldtimeapp/pages/home.dart';
import 'package:worldtimeapp/pages/loading.dart';

void main() => runApp(MaterialApp(
//  initialRoute: '/',
  routes: {
    '/': (context) => LoadingScreen(),
    '/location': (context) => ChooseLocation(),
    '/home': (context) => Home()
  },));

