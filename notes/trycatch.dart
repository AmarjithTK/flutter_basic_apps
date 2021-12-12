import 'package:flutter/material.dart';

void main() => runTasks();

void runTasks() {
  String numString = '17.0';
  double parsedString = double.parse(numString);
  print(parsedString + 7.0);
  anotherTask();
}

IconData anotherTask() {
  IconData returnVal;

  try {
    String a = 'cannotsay what it is';
    double b = double.parse(a);
    print(b);
    returnVal = Icons.fmd_good;
  } catch (err) {
    print(err.toString() + ' this is so bad to be found as an error');

    returnVal = Icons.dangerous;
  }

  return returnVal;
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Icon(anotherTask()),
          ),
        ),
      ),
    );
  }
}
