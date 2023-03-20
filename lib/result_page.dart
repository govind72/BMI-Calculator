import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/material.dart';
import 'my_card.dart';
import 'bottom_button.dart';
import 'constants.dart';

class ResultPage extends StatelessWidget {

  final String bmiResult;
  final String resultText;
  final String resultDiscreption;
  ResultPage({@required this.bmiResult,@required this.resultText,@required this.resultDiscreption});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Container(
            padding: EdgeInsets.all(15),
            alignment: Alignment.bottomLeft,
            child: Text('Your Result',style: kTitleTextstyle,),
          ),),
          Expanded(
            flex: 5,
              child: MyCard(
                colour:kActiveCardColour ,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    Text(resultText,style: kResultTextstyle,),
                    Text(bmiResult,style: kBmiTextstyle,),
                    Text(resultDiscreption,style: kBodyTextstyle, textAlign: TextAlign.center,)
                  ],
                ),

          )),
          BottomButton(text:'Re - Calculate',onTap: (){
            Navigator.pop(context);
          },)

        ],
      ),
    );
  }
}
