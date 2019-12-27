import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/constants.dart';
import 'package:flutter_bmi_calculator/custom/bottom_button.dart';
import 'package:flutter_bmi_calculator/custom/reusable_card.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.bmiResult,
      @required this.interpretetion,
      @required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretetion;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
      ),
      body: _buildMain(context),
    );
  }

  Widget _buildMain(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: Container(
            padding: EdgeInsets.all(15.0),
            alignment: Alignment.bottomLeft,
            child: Text(
              "Your Result",
              style: kTitleTextStyle,
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: ReusableCard(
            colour: kActiveCodeColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  resultText.toUpperCase(),
                  style: kResultTextStyle,
                ),
                Text(
                  bmiResult,
                  style: kBMITextStyle,
                ),
                Text(
                  interpretetion,
                  textAlign: TextAlign.center,
                  style: kBodyTextStyle,
                ),
              ],
            ),
          ),
        ),
        BottomButton(
          buttonTitle: 'RE-CALCULATE',
          onTap: () {
            Navigator.pop(context);
          },
        )
      ],
    );
  }
}
