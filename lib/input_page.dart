import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reuseable_card.dart';

const BottomContainerHeight = 80.0;
const BottomContainerColor = Color(0xFFE38E49);
const ContainerColor = Color(0xFF1F509A);

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                child: ReuseableCard(
                  colour: ContainerColor,
                  cardChild: IconContent(
                    gender: FontAwesomeIcons.mars,
                    gendertext: 'MALE',
                  ),
                ),
              ),
              Expanded(
                child: ReuseableCard(
                  colour: ContainerColor,
                  cardChild: IconContent(
                    gender: FontAwesomeIcons.venus,
                    gendertext: 'FEMALE',
                  ),
                ),
              )
            ]),
          ),
          Expanded(
            child: ReuseableCard(colour: ContainerColor),
          ),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(child: ReuseableCard(colour: ContainerColor)),
              Expanded(
                child: ReuseableCard(colour: ContainerColor),
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
