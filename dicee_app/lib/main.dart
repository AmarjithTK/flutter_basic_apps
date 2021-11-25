import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(Dicee());

class Dicee extends StatefulWidget {
  const Dicee({Key? key}) : super(key: key);

  @override
  _DiceeState createState() => _DiceeState();
}

class _DiceeState extends State<Dicee> {
  int _leftdice = 1;
  int _rightdice = 1;

  void _updateDice() {
    print(null);

    return setState(() {
      _leftdice = Random().nextInt(6) + 1;
      _rightdice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          backgroundColor: Colors.red,
          actions: [],
          title: Center(
            child: Text('Dicee App'),
          ),
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    _updateDice();
                  },
                  child: Image(
                    image: NetworkImage(
                        'https://raw.githubusercontent.com/londonappbrewery/dicee-flutter/master/images/dice$_leftdice.png'),
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    _updateDice();
                  },
                  child: Image(
                    image: NetworkImage(
                        'https://raw.githubusercontent.com/londonappbrewery/dicee-flutter/master/images/dice$_rightdice.png'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
