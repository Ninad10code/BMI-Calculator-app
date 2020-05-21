import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
//  const ReusableCard({
//    Key key,
//  }) : super(key: key);
  final Color color;
  final Widget cardChild;
  final Function onPress;
  ReusableCard({@required this.color, this.cardChild,this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
//      height: 250.0,
//      width: 170.0,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(10.0),
          color: color,
        ),
      ),
    );
  }
}
