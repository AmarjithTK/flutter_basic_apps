import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MagicBall());

class MagicBall extends StatefulWidget {
  const MagicBall({Key? key}) : super(key: key);

  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int _magicNumber = 1;

  void _magicAnswer() {
    setState(() {
      _magicNumber = Random().nextInt(4) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.greenAccent,
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Center(
              child: Text(
            'Ask me anything',
          )),
        ),
        body: Center(
          child: MaterialButton(
            onPressed: () {
              _magicAnswer();
            },
            child: Image(
              image: NetworkImage(
                  'https://raw.githubusercontent.com/londonappbrewery/magic-8-ball-flutter/master/images/ball$_magicNumber.png'),
            ),
          ),
        ),
      ),
    );
  }
}
