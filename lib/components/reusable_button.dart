import 'package:akawo_app/constants.dart';
import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {
  ReusableButton({@required this.colour, this.onTap, this.buttonTitle});
  final Color colour;
  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child: Text(
            buttonTitle,
            style: kActiveButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
