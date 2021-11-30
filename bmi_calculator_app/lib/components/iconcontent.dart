import 'package:flutter/material.dart';

const kiconContentText = TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400);

const ksmallText = TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400);

const kbigText = TextStyle(fontSize: 20.0, fontWeight: FontWeight.w800);

class IconContent extends StatelessWidget {
  IconContent(@required this.icon, this.text);

  final icon;
  final text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 55.0),
        SizedBox(
          height: 10.0,
        ),
        Text(
          text,
          style: kiconContentText,
        )
      ],
    );
  }
}

class CardContent extends StatelessWidget {
  CardContent({@required this.smallText, this.bigText, this.child});

  final smallText;
  final bigText;
  final child;

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 10.0, width: double.infinity),
        Text(
          smallText,
          style: ksmallText,
        ),
        SizedBox(
          height: 2.0,
        ),
        Text(
          bigText,
          style: kbigText,
        ),
        SizedBox(
          height: 10.0,
        ),
        child,
      ],
    );
  }
}
