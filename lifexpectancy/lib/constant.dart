import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

TextStyle ktextStyle =
    TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black54);
TextStyle knumberStyle = TextStyle(
    fontSize: 22, fontWeight: FontWeight.bold, color: Colors.deepOrange[400]);
TextStyle ktitleStyle =
    TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black54);

final ButtonStyle outlineButtonStyle = OutlinedButton.styleFrom(
  primary: Colors.black87,
  minimumSize: Size(58, 36),
  side: BorderSide(color: Colors.deepOrange),
  padding: EdgeInsets.symmetric(horizontal: 4),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2)),
  ),
);
