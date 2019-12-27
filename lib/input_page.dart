import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/custom/icon_content.dart';
import 'package:flutter_bmi_calculator/custom/reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;

const activeCodeColor = Color(0xFF1D1E33);
const inactiveCodeColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCodeColor;
  Color femaleCardColor = inactiveCodeColor;

  // 1=male, 2 = female
  void updateColour(int gender) {
    if (gender == 1) {
      if (maleCardColor == inactiveCodeColor) {
        maleCardColor = activeCodeColor;
        femaleCardColor = inactiveCodeColor;
      } else {
        maleCardColor = inactiveCodeColor;
      }
    }
    if (gender == 2) {
      if (femaleCardColor == inactiveCodeColor) {
        femaleCardColor = activeCodeColor;
        maleCardColor = inactiveCodeColor;
      } else {
        femaleCardColor = inactiveCodeColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: _buildMain(context),
    );
  }

  Widget _buildMain(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColour(1);
                    });
                  },
                  child: ReusableCard(
                    colour: maleCardColor,
                    cardChild: IconContent(
                      label: "FEMALE",
                      contentIcon: FontAwesomeIcons.venus,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColour(2);
                    });
                  },
                  child: ReusableCard(
                    colour: femaleCardColor,
                    cardChild: IconContent(
                      label: "MALE",
                      contentIcon: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ReusableCard(
            colour: activeCodeColor,
          ),
        ),
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  colour: activeCodeColor,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: activeCodeColor,
                ),
              ),
            ],
          ),
        ),
        Container(
          color: bottomContainerColor,
          margin: EdgeInsets.only(top: 10.0),
          width: double.infinity,
          height: bottomContainerHeight,
        )
      ],
    );
  }
}
