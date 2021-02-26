import 'package:bmi_calculator/constans.dart';
import 'package:flutter/material.dart';
import './reusable_card.dart';
import './bottom_button.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({@required this.bmi,@required this.bmiresult, @required this.bmiInterpretate});
  final String bmiresult;
  final String bmi;
  final String bmiInterpretate;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text('Your Result',
              
                  style: kTitleTextStyle),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(bmiresult, style: kResultTextStyle),
                  Text(bmi, style: kBMItextStyle),
                  Text(bmiInterpretate,
                    textAlign: TextAlign.center,
                    style: kBodtTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(butoonTitle: 'RE-CALCULATE', onTap: (){
            Navigator.pop(context);

          })
        ],
      ),
    );
  }
}
