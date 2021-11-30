import 'dart:math';
import 'package:flutter/material.dart';

class CalcBrain {
  CalcBrain({required this.height, required this.weight});

  final double height;
  final double weight;
  double bmiValue = 0.0;

  String calc() {
    bmiValue = weight / pow((height / 100), 2);
    return bmiValue.toStringAsFixed(1);
  }

  String interpret() {
    // bmiValue = this.calc();
    if (bmiValue < 16.0)
      return 'Extremely bad weight. Eat more than ever';
    else if (bmiValue > 16.0 && bmiValue < 25.0)
      return 'Perfect weight. You nailed it bro !';
    else if (bmiValue > 25.0)
      return 'You are So fat . Never stop jogging';
    else
      return 'well this is possible at leat in my knowledge right now ';
  }

  String status() {
    // bmiValue = calc();

    if (bmiValue < 16.0)
      return 'underweight';
    else if (bmiValue > 16.0 && bmiValue < 25.0)
      return ' Normal';
    else if (bmiValue > 25.0)
      return 'overweight';
    else
      return 'well this is possible at leat in my knowledge right now ';
  }

  Color color() {
    if (bmiValue < 16.0)
      return Colors.redAccent;
    else if (bmiValue > 16.0 && bmiValue < 25.0)
      return Colors.greenAccent;
    else if (bmiValue > 25.0)
      return Colors.redAccent;
    else
      return Colors.green;
  }
}
