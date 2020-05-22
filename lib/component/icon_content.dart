import 'package:bmicalculator/util/constants.dart';
import 'package:flutter/material.dart';

/*
* en süteki erkek/kadın butonu
* */
class IconContent extends StatelessWidget {
  IconContent({this.icon, this.label, this.iconColor, this.labelActive});
  final IconData icon;
  final String label;
  final Color iconColor;
  final TextStyle labelActive;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
          color: iconColor,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: labelActive == null ? kLabelTextStyle : labelActive,
        )
      ],
    );
  }
}
