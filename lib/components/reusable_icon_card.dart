import 'package:flutter/material.dart';

class ReusableIconCard extends StatelessWidget {
  ReusableIconCard({this.colour, this.cardChild, this.onPress, this.key});

  final Color colour;
  final Widget cardChild;
  final Function onPress;
final Key key;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        key: key,
        child: cardChild,
        //margin: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: colour,
          //borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}