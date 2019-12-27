import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/constants.dart';



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
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
