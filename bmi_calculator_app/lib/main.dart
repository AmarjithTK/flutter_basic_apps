import 'package:flutter/material.dart';
import 'screens/firstpage.dart';

import 'screens/secondpage.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Colors.white,
          scaffoldBackgroundColor: Color(0xff090C22)),
      home: FirstPage(),
    );
  }
}
