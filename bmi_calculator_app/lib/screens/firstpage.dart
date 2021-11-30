// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:linuxclock/calc.dart';
import 'package:linuxclock/components/iconcontent.dart';
import 'package:linuxclock/tools/constants.dart';
import '../components/card.dart';
import '../components/bottombutton.dart';
import '../components/roundbutton.dart';

import '../tools/constants.dart';

import '../screens/secondpage.dart';

const activeColor = Color(0xff1D1F33);
const inactiveColor = Color(0xff0000);

enum gender { female, male }

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  double height = 150.0;
  int weight = 50;
  int age = 19;

  dynamic selectedgender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0), child: DefaultAppBar()),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                      margin: EdgeInsets.fromLTRB(10, 10, 0, 10),
                      color: selectedgender == gender.male
                          ? activeColor
                          : cardColor,
                      child: IconContent(Icons.male, 'MALE'),
                      onPressed: () {
                        setState(() {
                          selectedgender = gender.male;
                        });
                      }),
                ),
                Expanded(
                  child: ReusableCard(
                      margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      color: selectedgender == gender.female
                          ? activeColor
                          : cardColor,
                      child: IconContent(Icons.female, 'FEMALE'),
                      onPressed: () {
                        setState(() {
                          selectedgender = gender.female;
                        });
                      }),
                ),
              ],
            ),
          ),

          // nota row

          Expanded(
            child: ReusableCard(
              margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
              color: cardColor,
              child: CardContent(
                smallText: 'HEIGHT',
                bigText: height.round().toString() + 'CM',
                child: SliderTheme(
                  data: SliderThemeData(
                      inactiveTrackColor: Colors.redAccent,
                      activeTrackColor: Colors.pink,
                      thumbColor: kbottombuttonColor,
                      overlayColor: Colors.green,
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 6.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 20.0)),
                  child: Slider(
                      value: height,
                      min: 100.0,
                      max: 200.0,
                      onChanged: (change) {
                        setState(() {
                          height = change;
                        });
                      }),
                ),
              ),
              onPressed: () {},
            ),
          ),

          // nota row

          Expanded(
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: ReusableCard(
                      margin: EdgeInsets.fromLTRB(10, 0, 0, 10),
                      color: cardColor,
                      child: CardContent(
                        smallText: 'WEIGHT',
                        bigText: weight.toString() + 'KG',
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundButton(Icons.add, () {
                              setState(() {
                                weight++;
                              });
                            }),
                            SizedBox(width: 10.0),
                            RoundButton(Icons.remove, () {
                              setState(() {
                                weight--;
                              });
                            })
                          ],
                        ),
                      ),
                      onPressed: () {}),
                ),
                Expanded(
                  child: ReusableCard(
                      margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
                      color: cardColor,
                      child: CardContent(
                        smallText: 'AGE',
                        bigText: age.toString(),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundButton(Icons.add, () {
                              setState(() {
                                age++;
                              });
                            }),
                            SizedBox(width: 10.0),
                            RoundButton(Icons.remove, () {
                              setState(() {
                                age--;
                              });
                            })
                          ],
                        ),
                      ),
                      onPressed: () {}),
                ),
              ],
            ),
          ),

          BottomButton('CALCULATE YOUR BMI', () {
            CalcBrain calcbrain =
                CalcBrain(height: height, weight: weight.toDouble());

            String bmivalue = calcbrain.calc();
            String status = calcbrain.status();
            String interpret = calcbrain.interpret();
            Color color = calcbrain.color();

            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SecondPage(
                          bmi: bmivalue,
                          status: status,
                          interpret: interpret,
                          color: color,
                        )));
          })
        ],
      ),
    );
  }
}
