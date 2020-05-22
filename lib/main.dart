import 'package:bmicalculator/screens/bmi_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF151F42),
          scaffoldBackgroundColor: Color(0xFF0A0E21),
        ),
        home: InputPage());
  }
}
