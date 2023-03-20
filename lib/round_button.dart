import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;
  RoundButton({this.icon,this.onPressed});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      elevation: 8.0,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        width: 50,
        height: 50,
      ),
    );
  }
}