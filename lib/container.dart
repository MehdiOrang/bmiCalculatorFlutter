import "package:flutter/material.dart";
import 'constans.dart';


class CardGender extends StatelessWidget {
  CardGender({@required this.icon, @required this.text, });
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          text.toUpperCase(),
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
