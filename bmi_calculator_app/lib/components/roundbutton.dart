import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  RoundButton(@required this.icon, this.onTap);

  final icon;
  final onTap;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        fillColor: Color(0xff1C1F32),
        onPressed: onTap,
        child: Icon(icon),
        constraints: BoxConstraints.tightFor(height: 45.0, width: 40.0),
        shape: CircleBorder());
  }
}
