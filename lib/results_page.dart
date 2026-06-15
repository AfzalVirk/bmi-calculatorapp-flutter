import 'package:bmi_calculator_flutter/constants.dart';
import 'package:flutter/material.dart';
import 'reuseable_card.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI Calculator'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Container(
                child: const Text(
                  'Your Result',
                  style: kTitleTextStyle,
                ),
              ),
            ),
            Expanded(
                flex: 5,
                child: ReuseableCard(
                  colour: kActivecolor,
                  cardChild: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text(
                        'Normal',
                        textAlign: TextAlign.center,
                        style: kResultTextStyle,
                      ),
                      Text(
                        '18.3',
                        textAlign: TextAlign.center,
                        style: kBMITextStyle,
                      ),
                      Text(
                        'You BMI Result is quite low, Eat more!',
                        textAlign: TextAlign.center,
                        style: kBodyTextStyle,
                      ),
                    ],
                  ),
                ))
          ],
        ));
  }
}
