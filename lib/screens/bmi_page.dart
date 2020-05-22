import 'dart:async';

import 'package:bmicalculator/component/index.dart';
import 'package:bmicalculator/screens/bmi_result_page.dart';
import 'package:bmicalculator/util/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.female;
  int height = 180;
  int weight = 60;
  int age = 20;
  Timer timer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'VÜCUT KİTLE İNDEKSİ',
          textAlign: TextAlign.center,
        )),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: kActiveCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      iconColor: selectedGender == Gender.male
                          ? kActiveCardIconColor
                          : kInactiveCardIconColor,
                      label: "ERKEK",
                      labelActive: selectedGender == Gender.male
                          ? kLabelActiveTextStyle
                          : null,
                    ),
                    border: selectedGender == Gender.male
                        ? Border.all(width: 3.0, color: kBbottomContainerColor)
                        : Border.all(width: 0),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: kActiveCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      iconColor: selectedGender == Gender.female
                          ? kActiveCardIconColor
                          : kInactiveCardIconColor,
                      label: "KADIN",
                      labelActive: selectedGender == Gender.female
                          ? kLabelActiveTextStyle
                          : null,
                    ),
                    border: selectedGender == Gender.female
                        ? Border.all(width: 3.0, color: kBbottomContainerColor)
                        : Border.all(width: 0),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "BOY",
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        ' CM',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: Color(0xFF8D8E98),
                        activeTrackColor: Colors.white,
                        thumbColor: Color(0xFFFBB364),
                        overlayColor: Color(0x29FBB364),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30.0)),
                    child: Slider(
                      value: height.toDouble(),
                      min: 100.0,
                      max: 220.0,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'KİLO',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              onLongPress: () {
                                timer = Timer.periodic(
                                    Duration(milliseconds: 100), (t) {
                                  setState(() {
                                    weight--;
                                  });
                                });
                              },
                              onLongPressUp: () {
                                timer.cancel();
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              onLongPress: () {
                                timer = Timer.periodic(
                                    Duration(milliseconds: 100), (t) {
                                  setState(() {
                                    weight++;
                                  });
                                });
                              },
                              onLongPressUp: () {
                                timer.cancel();
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'YAŞ',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                              onLongPress: () {
                                timer = Timer.periodic(
                                    Duration(milliseconds: 100), (t) {
                                  setState(() {
                                    age--;
                                  });
                                });
                              },
                              onLongPressUp: () {
                                timer.cancel();
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              onLongPress: () {
                                timer = Timer.periodic(
                                    Duration(milliseconds: 100), (t) {
                                  setState(() {
                                    age++;
                                  });
                                });
                              },
                              onLongPressUp: () {
                                timer.cancel();
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            buttonTitle: "HESAPLA",
            onTap: () {
              CalculatorBrain calc =
                  CalculatorBrain(height: height, weight: weight);
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ResultPage(
                          bmiResult: calc.calculateBMI(),
                          resultText: calc.getResult(),
                          interpretation: calc.getInterpretation(),
                          gender: selectedGender == Gender.female
                              ? "KADIN"
                              : "ERKEK",
                        )),
              );
            },
          ),
        ],
      ),
    );
  }
}
