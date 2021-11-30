import 'package:flutter/material.dart';

const kcardBackground = Color(0xff1D1F33);
const kbottombuttonColor = Color(0xFFEB1555);
const cardColor = Color(0xff303636);

const kcardRadius = 8.0;

class DefaultAppBar extends StatelessWidget {
  const DefaultAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      leading: Icon(Icons.line_weight),
      title: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 40, 0),
          child: Text('BMI CALCULATOR', style: TextStyle(fontSize: 13.0)),
        ),
      ),
    );
  }
}
