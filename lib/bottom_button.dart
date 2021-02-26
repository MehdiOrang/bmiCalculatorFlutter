import 'package:flutter/material.dart';
import 'constans.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.butoonTitle, @required this.onTap});
  final Function onTap;
  final String butoonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            butoonTitle,
            style: kLargeButtomTextStyle,
          ),
        ),
        margin: EdgeInsets.only(top: 10),
        color: kBottomContainerColor,
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}