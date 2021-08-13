import 'package:flutter/material.dart';
import 'package:lifexpectancy/constant.dart';
import 'package:lifexpectancy/resultpage.dart';
import 'package:lifexpectancy/userdata.dart';

import 'icon_gender.dart';
import 'mycontainer.dart';

class inputPage extends StatefulWidget {
  const inputPage({Key? key}) : super(key: key);

  @override
  _inputPageState createState() => _inputPageState();
}

class _inputPageState extends State<inputPage> {
  String? chosenGender;
  double smokingSigarette = 5.0;
  double sportDay = 3.0;
  int height = 170;
  int weight = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Life Expectancy'),
        centerTitle: true,
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: MyContainer(
                  child: buildRowOutlinedButton('HEIGHT'),
                ),
              ),
              Expanded(
                child: MyContainer(
                  child: buildRowOutlinedButton('WEIGHT'),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: MyContainer(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('How many times a week do you exercise?',
                    style: ktextStyle),
                Text(sportDay.round().toString(), style: knumberStyle),
                Slider(
                    divisions: 7,
                    min: 0,
                    max: 30,
                    value: sportDay,
                    onChanged: (double newValue) {
                      sportDay = newValue;
                    })
              ],
            ),
          ),
        ),
        Expanded(
          child: MyContainer(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'How many cigarettes do you smoke a day?',
                  style: ktextStyle,
                ),
                Text(smokingSigarette.round().toString(), style: knumberStyle),
                Slider(
                    min: 0,
                    max: 30,
                    value: smokingSigarette,
                    onChanged: (double newValue) {
                      smokingSigarette = newValue;
                    })
              ],
            ),
          ),
        ),
        Expanded(
            child: Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    chosenGender = 'FEMALE';
                  });
                },
                child: MyContainer(
                    renk: chosenGender == 'FEMALE'
                        ? Colors.deepOrange.shade100
                        : Colors.white,
                    child: MyColumn(
                      gender: 'FEMALE',
                      icon: Icons.female,
                    )),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    chosenGender = 'MALE';
                  });
                },
                child: MyContainer(
                  renk: chosenGender == 'MALE'
                      ? Colors.deepOrange.shade200
                      : Colors.white,
                  child: MyColumn(
                    icon: Icons.male,
                    gender: 'MALE',
                  ),
                ),
              ),
            ),
          ],
        )),
        ButtonTheme(
          buttonColor: Colors.white,
          height: 50,
          child: FlatButton(
              color: Colors.white,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => resultPage(UserData(
                              chosenGender: chosenGender,
                              smokingSigarette: smokingSigarette,
                              sportDay: sportDay,
                              height: height,
                              weight: weight,
                            ))));
              },
              child: Text(
                "CALCULATE",
                style: ktextStyle,
              )),
        )
      ]),
    );
  }

  Row buildRowOutlinedButton(String label) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RotatedBox(
          quarterTurns: -1,
          child: Text(
            label,
            style: ktitleStyle,
          ),
        ),
        RotatedBox(
          quarterTurns: -1,
          child: Text(
            label == 'HEIGHT' ? height.toString() : weight.toString(),
            style: knumberStyle,
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonTheme(
              child: OutlinedButton(
                onPressed: () {
                  setState(() {
                    label == 'HEIGHT' ? height++ : weight++;
                  });
                },
                child: Icon(Icons.add),
                style: outlineButtonStyle,
              ),
            ),
            OutlinedButton(
              onPressed: () {
                setState(() {
                  label == 'HEIGHT' ? height-- : weight--;
                });
              },
              child: Icon(Icons.horizontal_rule_sharp),
              style: outlineButtonStyle,
            )
          ],
        )
      ],
    );
  }
}
