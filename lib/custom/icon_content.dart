import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98));

class IconContent extends StatelessWidget {
  final String label;
  final IconData contentIcon;

  IconContent({this.label, this.contentIcon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(
          contentIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: labelTextStyle,
        )
      ],
    );
  }
}
