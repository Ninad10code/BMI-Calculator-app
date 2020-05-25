import 'package:bmi_calculator/icon_content.dart';
import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';
class ResultPage extends StatelessWidget {
  ResultPage({@required this.BMIresult, @required this.BMIInterpretator, @required this.BMIText});

  final String BMIresult;
  final String BMIText;
  final String BMIInterpretator;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Result',
                style: TextStyle(
                  fontSize: 50.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
              child: ReusableCard(
                color: activeCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      BMIText,
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 20.0,

                      ),
                    ),
                    Text(
                      BMIresult,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 80.0,
                      ),
                    ),
                    Text(
                      BMIInterpretator,
                      style: textStyle,
                    )
                  ],
                ),
              )
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Color(0XFFFE2955),
              child: Text(

                'My Calculator',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
//                    textBaseline: TextBaseline.alphabetic,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
