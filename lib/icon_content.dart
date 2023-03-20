import 'package:flutter/material.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  final IconData iconData;
  final String lable;
  IconContent({this.iconData,this.lable});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 80,
        ),
        SizedBox(height: 15),
        Text(lable,
          style:kTextstyle,
        )
      ],
    );
  }
}