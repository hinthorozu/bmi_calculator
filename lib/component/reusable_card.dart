import 'package:flutter/material.dart';

/*
* genel alanlar
* */
class ReusableCard extends StatelessWidget {
  ReusableCard(
      {@required this.colour, this.cardChild, this.onPress, this.border});
  final Color colour;
  final Widget cardChild;
  final Function onPress;
  final Border border;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: colour,
          border: border,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
