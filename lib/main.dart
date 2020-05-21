import 'package:flutter/material.dart';
import 'input_page.dart';
void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
//
        accentColor: Colors.purple, //used for button color
        primaryColor: Color(0XFF1B1B1B), //used for app bar section color
//        brightness: Brightness.dark,//changes the background color
        scaffoldBackgroundColor:
            Color(0XFF161616), // changes the scaffold background color
        textTheme: TextTheme(
          body1: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      home: InputPage(),

    );
  }
}


