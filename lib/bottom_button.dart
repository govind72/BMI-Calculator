import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  final String text;
  final Function onTap;
  BottomButton({this.text,this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Center(
        child: Container(
          padding:EdgeInsets.only(top: 18),
          child: Text(text,style:kLargeButtonStyle ,textAlign: TextAlign.center,),
          color: kBottomColour,
          height: kBottomHight,
          width: double.infinity,
        ),
      ),
    );
  }
}
