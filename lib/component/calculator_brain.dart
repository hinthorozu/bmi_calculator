import 'dart:math';

/*
* İndeks hesaplama
* */
class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});
  final int height;
  final int weight;
  double _bmi;
  double calculateBMI() {
    return _bmi = weight / pow(height / 100, 2);
  }

  String getResult() {
    print(_bmi);
    if (_bmi >= 40) {
      return "III.Derece Morbid Obez";
    } else if (_bmi >= 35 && _bmi < 40) {
      return 'II.Derece Obez';
    } else if (_bmi >= 30 && _bmi < 35) {
      return 'I.Derece Obez';
    } else if (_bmi >= 25 && _bmi < 30) {
      return 'Fazla Kilolu';
    } else if (_bmi >= 18.5 && _bmi < 25) {
      return 'Normal';
    } else {
      return 'Zayıf';
    }
  }

// açıklamalar
  String getInterpretation() {
    if (_bmi >= 40) {
      return "III.Derece Morbid Obez";
    } else if (_bmi >= 35 && _bmi < 40) {
      return 'II.Derece Obez';
    } else if (_bmi >= 30 && _bmi < 35) {
      return 'I.Derece Obez';
    } else if (_bmi >= 25 && _bmi < 30) {
      return 'Fazla Kilolu';
    } else if (_bmi >= 18.5 && _bmi < 25) {
      return 'Normal';
    } else {
      return 'Zayıf';
    }
  }
}
