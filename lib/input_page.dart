import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reuseable_card.dart';

const BottomContainerHeight = 80.0;
const BottomContainerColor = Color(0xFFE38E49);
const activecolor = Color(0xFF1F509A);
const inactivecolor = Color(0xFF10366F);

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactivecolor;
  Color femaleCardColor = inactivecolor;

  //1 = male, 2 = female
  void UpdateColor(int gendernum) {
    //male card was pressed
    if (gendernum == 1) {
      if (maleCardColor == inactivecolor) {
        maleCardColor = activecolor;
        femaleCardColor = inactivecolor;
      } else {}
    }
    //female card was pressed
    if (gendernum == 2) {
      if (femaleCardColor == inactivecolor) {
        femaleCardColor = activecolor;
        maleCardColor = inactivecolor;
      } else {}
    }
  }

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
                      UpdateColor(1);
                    });
                  },
                  child: ReuseableCard(
                    colour: maleCardColor,
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
                      UpdateColor(2);
                    });
                  },
                  child: ReuseableCard(
                    colour: femaleCardColor,
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
