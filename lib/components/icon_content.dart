import 'package:akawo_app/constants.dart';
import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  IconContent({this.icon, this.label, this.colour});

  final IconData icon;
  final String label;
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(color: Colors.yellow),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            size: 30.0,
            color: colour,
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            label,
            style: kIconLabelTextStyle,
          )
        ],
      ),
    );
  }
}
