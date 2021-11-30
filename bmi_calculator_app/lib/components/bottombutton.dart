import 'package:flutter/material.dart';
import 'package:linuxclock/tools/constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton(@required this.buttonText, this.onPressed);

  final String buttonText;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        // margin: EdgeInsets.only(top: 10.0),
        height: 60.0,
        child: Center(
            child: Text(
          buttonText,
          style: TextStyle(),
        )),
        decoration: BoxDecoration(color: kbottombuttonColor),
      ),
    );
  }
}
