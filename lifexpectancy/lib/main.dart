import 'package:flutter/material.dart';
import 'package:lifexpectancy/inputpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.deepOrange,
        scaffoldBackgroundColor: Colors.deepOrange[300],
      ),
      debugShowCheckedModeBanner: false,
      home: inputPage(),
    );
  }
}
