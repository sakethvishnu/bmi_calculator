import 'package:bmicalculator/constants.dart';
import 'package:bmicalculator/reusable_icon.dart';
import 'package:flutter/material.dart';
import 'bottom_icon.dart';

class ResultPage extends StatelessWidget {
  ResultPage({@required this.bmiResult,@required this.resultText ,@required this.interpretation});
  final String bmiResult;
  final String resultText;
  final String interpretation;
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI RESULT',style: kLabelStyle,),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                textAlign: TextAlign.center,
                style: kYourResStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: kNorStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBmi,
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: kLevel,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            bottomText: 'RE-CALCULATE',
            onClick: (){
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
