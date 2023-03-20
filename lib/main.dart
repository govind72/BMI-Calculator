import 'package:flutter/material.dart';
import 'input_page.dart';
import 'result_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
        home: InputPage(),

        theme: ThemeData.dark().copyWith(
          appBarTheme: AppBarTheme(color: Color(0xFF0E1438)),
          primaryColor: Color(0xFF0E1437),
          scaffoldBackgroundColor: Color(0xFF0E1437),
        ));
  }
}


