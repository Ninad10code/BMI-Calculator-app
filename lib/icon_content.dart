import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

const textStyle = TextStyle(
  fontSize: 18.0,
  color: Colors.white,
);
class IconContents extends StatelessWidget {
//  const IconContents({
//    Key key,
//  }) : super(key: key);
  final iconType;
  final color;
  final String text;
  IconContents({@required this.iconType, this.color, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconType,
          size: 100.0,
          color: color,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: textStyle,
        )
      ],
    );
  }
}