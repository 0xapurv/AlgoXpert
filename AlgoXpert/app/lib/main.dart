import 'package:app/screens/home.dart';
import 'package:app/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.pink,scaffoldBackgroundColor: Color(0xdd001529)),
        color: Colors.pink,
        home: Splash());
  }
}
