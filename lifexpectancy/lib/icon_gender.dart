import 'package:flutter/material.dart';
import 'package:lifexpectancy/constant.dart';

class MyColumn extends StatelessWidget {
  final String gender;
  final IconData? icon;
  MyColumn({required this.gender, this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 45,
          color: Colors.black54,
        ),
        Text(
          gender,
          style: ktitleStyle,
        ),
      ],
    );
  }
}
