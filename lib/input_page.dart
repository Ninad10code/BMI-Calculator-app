import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

const bottomContainerHeight = 70.0;
const reusableColorCard = Color(0XFF1B1B1B);
const activeCardColor = Color(0XFF1B1B1B);
const inactiveCardColor = Color(0XFF140F0A);
const bottomButtonColor = Color(0XFF6D00C1); //FE2955 nice red color also
enum Gender {female,male}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;
// 1- male | 0 - female
  int Height = 180;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: ()
                    {
                      setState(() {
                        maleCardColor==inactiveCardColor?maleCardColor=activeCardColor:maleCardColor=inactiveCardColor;
                        femaleCardColor=inactiveCardColor;
//                        updateColor(Gender.male);
                      });
//                      print('male card was pressed');
                    },
                    child: ReusableCard(
                      color: maleCardColor,
                      cardChild: IconContents(
                        iconType: FontAwesomeIcons.mars,
                        color: Color(0XFF08F7FE),
                        text: 'Male',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: ()
                    {

                      setState(() {
                        femaleCardColor==inactiveCardColor?femaleCardColor=activeCardColor:femaleCardColor=inactiveCardColor;
                        maleCardColor=inactiveCardColor;
                      });
                    },
                    color: femaleCardColor,
                    cardChild: IconContents(
                      iconType: FontAwesomeIcons.venus,
                      color: Color(0XFFFE53BB),
                      text: 'Female',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: reusableColorCard,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Height',
                    style: textStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        Height.toString(),
                        style: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.w900,
                          color: Color(0XFFFFC107),
                        ),
                      ),
                      Text(
                        'cm',
                        style: textStyle,
                      )
                    ],
                  ),
                  Slider.adaptive(value: Height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      activeColor: Color(0XFFFE2955),
                      inactiveColor: Color(0XFF673AB7),
                      onChanged: (double newValue)
                    {
                      setState(() {
                        Height=newValue.round();
                      });

                    },
                  )
                ],
              ),

            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(color: reusableColorCard),
                ),
                Expanded(
                  child: ReusableCard(color: reusableColorCard),
                ),
              ],
            ),
          ),
          Container(
            color: bottomButtonColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}



