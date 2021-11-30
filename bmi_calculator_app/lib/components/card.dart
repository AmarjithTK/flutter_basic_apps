import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard(
      {required this.color,
      required this.child,
      required this.onPressed,
      required this.margin});

  final Color color;
  final Widget child;
  final onPressed;
  final margin;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onPressed,
        child: Container(
          margin: margin,
          child: child,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(7)),
        ));
  }
}
