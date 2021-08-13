import 'package:flutter/material.dart';
import 'package:lifexpectancy/calculate.dart';
import 'package:lifexpectancy/constant.dart';
import 'package:lifexpectancy/inputpage.dart';
import 'package:lifexpectancy/userdata.dart';

class resultPage extends StatelessWidget {
  final UserData _userData;
  resultPage(this._userData);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RESULT PAGE"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 8,
            child: Text(
              Calculete(_userData).calculated().toString(),
              style: ktextStyle,
            ),
          ),
          Expanded(
              flex: 1,
              child: ButtonTheme(
                height: 50,
                child: FlatButton(
                  color: Colors.white,
                  child: Text(
                    "BACK",
                    style: ktextStyle,
                  ),
                  onPressed: () {
                    Navigator.pop(context,
                        MaterialPageRoute(builder: (context) => inputPage()));
                  },
                ),
              ))
        ],
      ),
    );
  }
}
