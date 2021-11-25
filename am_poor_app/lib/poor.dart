import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(PoorApp());

class PoorApp extends StatelessWidget {
  const PoorApp({Key? key}) : super(key: key);

  void _onpressed() {
    print('button is pressed');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                "https://img.icons8.com/external-vitaliy-gorbachev-flat-vitaly-gorbachev/58/000000/external-bowl-chinese-new-year-vitaliy-gorbachev-flat-vitaly-gorbachev.png",
                height: 50.0,
                width: 50.02,
              ),
              SizedBox(
                height: 50.0,
                width: 0.0,
              ),
              TextButton.icon(
                onPressed: _onpressed,
                icon: Icon(Icons.expand),
                label: Text('I am Poor'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
