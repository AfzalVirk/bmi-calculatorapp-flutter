import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reuseable_card.dart';
import 'constants.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? genderselected;
  /*Color maleCardColor = inactivecolor;
  Color femaleCardColor = inactivecolor;

  //1 = male, 2 = female
  void UpdateColor(Gender genderSelected) {
    //male card was pressed
    if (genderSelected == Gender.male) {
      if (maleCardColor == inactivecolor) {
        maleCardColor = activecolor;
        femaleCardColor = inactivecolor;
      } else {}
    }
    //female card was pressed
    if (genderSelected == Gender.female) {
      if (femaleCardColor == inactivecolor) {
        femaleCardColor = activecolor;
        maleCardColor = inactivecolor;
      } else {}
    }
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(children: <Widget>[
              Expanded(
                child: ReuseableCard(
                  onPress: () {
                    setState(() {
                      genderselected = Gender.male;
                    });
                  },
                  colour: genderselected == Gender.male
                      ? kActivecolor
                      : kInactivecolor,
                  cardChild: IconContent(
                    gender: FontAwesomeIcons.mars,
                    gendertext: 'MALE',
                  ),
                ),
              ),
              Expanded(
                child: ReuseableCard(
                  onPress: () {
                    setState(() {
                      genderselected = Gender.female;
                    });
                  },
                  colour: genderselected == Gender.female
                      ? kActivecolor
                      : kInactivecolor,
                  cardChild: IconContent(
                    gender: FontAwesomeIcons.venus,
                    gendertext: 'FEMALE',
                  ),
                ),
              )
            ]),
          ),
          Expanded(
            child: ReuseableCard(
              colour: kActivecolor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '180',
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(child: ReuseableCard(colour: kActivecolor)),
              Expanded(
                child: ReuseableCard(colour: kActivecolor),
              ),
            ],
          )),
          Container(
            color: kBottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kBottomContainerHeight,
          )
        ],
      ),
    );
  }
}
