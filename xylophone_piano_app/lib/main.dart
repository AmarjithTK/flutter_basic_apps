import 'package:flutter/material.dart';

void main() => runApp(XyloPhone());

class XyloPhone extends StatefulWidget {
  const XyloPhone({Key? key}) : super(key: key);

  void _createWidget(color, text) {}

  @override
  _XyloPhoneState createState() => _XyloPhoneState();
}

class _XyloPhoneState extends State<XyloPhone> {
  void _play(soundnumber) {
    print(soundnumber++);
  }

  Expanded _createButton({color, text, soundnumber}) {
    return Expanded(
        child: MaterialButton(
      color: color,
      onPressed: () {
        _play(soundnumber);
      },
      child: Text(text),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _createButton(color: Colors.red, text: 'hello', soundnumber: 1),
          _createButton(color: Colors.blue, text: 'hello', soundnumber: 2),
          _createButton(color: Colors.green, text: 'hello', soundnumber: 3),
          _createButton(color: Colors.purple, text: 'hello', soundnumber: 4),
          _createButton(color: Colors.yellow, text: 'hello', soundnumber: 5),
          _createButton(color: Colors.orange, text: 'hello', soundnumber: 6),
          _createButton(color: Colors.pink, text: 'hello', soundnumber: 7),
          _createButton(color: Colors.teal, text: 'hello', soundnumber: 8),
        ],
      )),
    );
  }
}
