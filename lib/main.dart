import 'package:FuelCal/utils.dart';
import 'package:flutter/material.dart';

import 'HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FuelCal',
      theme: ThemeData(
        primarySwatch: primarySwatchColor,
        primaryColor: Colors.white,
        accentColor: darkBlueColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Poppins',
      ),
      home: MyHomePage(),
    );
  }
}
