import 'package:flutter/material.dart';

void main() => runApp(MiCard());

class MiCard extends StatelessWidget {
  const MiCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://raw.githubusercontent.com/AmarjithTK/storage__bin/master/my_portrait.jpg'),
              radius: 50.0,
            ),
            Text(
              'Amarjith TK',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic),
            ),
            Text(
              'Flutter,MERN developer',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                  fontStyle: FontStyle.normal),
            ),
            SizedBox(
              width: 100.0,
              height: 20.0,
              child: Divider(
                color: Colors.white,
              ),
            ),
            Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('+91-9605471074'),
                )),
            Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: ListTile(
                  leading: Icon(Icons.email),
                  title: Text('rgxx.gmail.com'),
                ))
          ],
        ),
      ),
    );
  }
}
