
import 'dart:math';

import 'package:bmi_calculator/main.dart';

class CalculatedBMI{

  CalculatedBMI({this.height,this.weight});
  final int height;
  final int weight;
  double _BMI;
  String calculate()
  {
    _BMI = weight/pow(height/100, 2);
    return _BMI.toStringAsFixed(1);
  }

  String getResult()
  {
    if(_BMI>25)
      {
        return 'Overweight';
      }
    else if(_BMI>18.5)
      {
        return 'Normal';
      }
    else
      {
        return 'Underweight';
      }
  }

  String getInterpretation()
  {
    if(_BMI>25)
    {
      return 'Need to workout and burn the calories';
    }
    else if(_BMI>18.5)
    {
      return 'Keep doing the exercise you do';
    }
    else
    {
      return 'Need to increase the intake of calories';
    }
  }


}