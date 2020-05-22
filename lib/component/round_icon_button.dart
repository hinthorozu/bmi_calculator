import 'package:flutter/material.dart';

/*
* + ve - butonları
* */
class RoundIconButton extends StatelessWidget {
  RoundIconButton(
      {@required this.icon,
      @required this.onPressed,
      this.onLongPress,
      this.onLongPressUp});
  final IconData icon;
  final Function onPressed;
  final Function onLongPress;
  final Function onLongPressUp;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: onLongPress,
      onLongPressUp: onLongPressUp,
      child: RawMaterialButton(
        child: Icon(icon),
        onPressed: onPressed,
        constraints: BoxConstraints.tightFor(
          width: 56.0,
          height: 56.0,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        fillColor: Color(0xFF4C4F5E),
      ),
    );
  }
}
