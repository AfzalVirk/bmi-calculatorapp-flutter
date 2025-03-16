import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(backgroundColor: Color(0xFF1F509A)),
        scaffoldBackgroundColor: Color(0XFFD4EBF8),
      ),
      home: InputPage(),
    );
  }
}
