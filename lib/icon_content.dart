import 'package:flutter/material.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  IconContent({required this.gender, required this.gendertext});

  final IconData gender;
  final String gendertext;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          gender,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          gendertext,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
