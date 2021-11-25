import 'package:flutter/material.dart';

// void main() {
//   return runApp(MyApp());
// }

//

// ignore: prefer_const_constructors
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text('I am rich APP'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Image.network(
          "https://img.icons8.com/color/48/000000/diamond.png",
          height: 50.0,
          width: 50.0,
        ),
      ),
    ));
  }
}
