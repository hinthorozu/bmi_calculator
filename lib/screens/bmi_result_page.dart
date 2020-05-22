import 'package:bmicalculator/component/index.dart';
import 'package:bmicalculator/util/constants.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {this.bmiResult, this.resultText, this.interpretation, this.gender});
  final double bmiResult;
  final String resultText;
  final String interpretation;
  final String gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'VÜCUT KİTLE İNDEKSİ',
          textAlign: TextAlign.center,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Sonuç",
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    gender,
                  ),
                  Text(
                    resultText.toUpperCase(),
                    style: bmiResult >= 25
                        ? kResultTextStyleDanger
                        : kResultTextStyle,
                  ),
                  Text(
                    bmiResult.toStringAsFixed(1),
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: "TEKRAR HESAPLA",
            onTap: () {
              Navigator.pop(context);
//              Navigator.of(context).pushNamedAndRemoveUntil(
//                  '/', (Route<dynamic> route) => false);
            },
          )
        ],
      ),
    );
  }
}
