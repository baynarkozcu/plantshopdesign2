import 'package:flutter/material.dart';
import 'package:flutterappshop2/constants.dart';

import 'screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plant Shop Demo',
      theme: ThemeData(
        primaryColor: primaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: kBackgroundColor
      ),
      home: Home(),
    );
  }
}