import 'package:flutter/material.dart';
import 'package:linuxclock/components/bottombutton.dart';

import '../tools/constants.dart';

const kyourResult = TextStyle(
    fontSize: 25.0,
    fontWeight: FontWeight.w500,
    backgroundColor: Colors.transparent);

class SecondPage extends StatelessWidget {
  SecondPage(
      {required this.bmi,
      required this.status,
      required this.interpret,
      required this.color});
  final String bmi;
  final String status;
  final String interpret;
  final Color color;

  @override
  Widget build(BuildContext context) {
    Color getColor() {
      if (status.toUpperCase() == 'NORMAL') {
        return Colors.greenAccent;
      } else {
        return Colors.redAccent;
      }
    }

    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50.0), child: DefaultAppBar()),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(40.0, 30.0, 0, 10),
            child: Text(
              'Your result',
              style: kyourResult,
            ),
          ),
          Container(
              width: double.infinity,
              // height: ,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 25.0, 0, 10),
                    child: Text(
                      status.toUpperCase(),
                      style: TextStyle(
                          fontSize: 13.0,
                          color: color,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    bmi.toString(),
                    style:
                        TextStyle(fontSize: 55.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text('Normal BMI range:',
                      style: TextStyle(fontSize: 15, color: Colors.grey)),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text('18.5 - 25 Kg/m2',
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w500)),
                  SizedBox(
                    height: 30.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    child: Text(interpret,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.w500)),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    height: 20,
                  )
                  // SizedBox(height: 5.0)
                ],
              ),
              decoration: BoxDecoration(
                  color: cardColor,
                  borderRadius: BorderRadius.circular(kcardRadius))),
          Expanded(child: Text('')),
          BottomButton('Recalculate'.toUpperCase(), () {
            Navigator.pop(context);
          })
        ],
      ),
    );
  }
}
