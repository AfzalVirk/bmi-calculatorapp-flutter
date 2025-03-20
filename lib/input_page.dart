import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reuseable_card.dart';

const BottomContainerHeight = 80.0;
const BottomContainerColor = Color(0xFFE2232F);
const activecolor = Color(0xFF1F509A);
const inactivecolor = Color(0xFF10366F);

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
        children: <Widget>[
          Expanded(
            child: Row(children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      genderselected = Gender.male;
                    });
                  },
                  child: ReuseableCard(
                    colour: genderselected == Gender.male
                        ? activecolor
                        : inactivecolor,
                    cardChild: IconContent(
                      gender: FontAwesomeIcons.mars,
                      gendertext: 'MALE',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      genderselected = Gender.female;
                    });
                  },
                  child: ReuseableCard(
                    colour: genderselected == Gender.female
                        ? activecolor
                        : inactivecolor,
                    cardChild: IconContent(
                      gender: FontAwesomeIcons.venus,
                      gendertext: 'FEMALE',
                    ),
                  ),
                ),
              )
            ]),
          ),
          Expanded(
            child: ReuseableCard(colour: activecolor),
          ),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(child: ReuseableCard(colour: activecolor)),
              Expanded(
                child: ReuseableCard(colour: activecolor),
              ),
            ],
          )),
          Container(
            color: BottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: BottomContainerHeight,
          )
        ],
      ),
    );
  }
}
