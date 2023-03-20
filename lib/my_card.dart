import 'package:flutter/material.dart';
class MyCard extends StatelessWidget {
  MyCard({this.colour,this.cardChild,this.onpress});
  final Color colour;
  final Widget cardChild;
  final Function onpress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color:colour,
            //   color: Colors.cyan,
            borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}