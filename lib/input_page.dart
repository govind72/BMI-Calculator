import 'package:bmi_calculator/result_page.dart';
import 'package:flutter/material.dart';
import 'my_card.dart';
import 'icon_content.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'bottom_button.dart';
import 'round_button.dart';
import 'calculator_brain.dart';
enum Gender {
  male,
  female,
}



class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int hight=120;
  int weight =35;
  int age=1;
  Gender x;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('BMI CALCULATOR')),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: new MyCard(
                      onpress: (){
                        setState(() {
                          x=Gender.male;
                        });
                      },
                  cardChild: IconContent(
                    iconData: FontAwesomeIcons.mars,
                    lable: 'MALE',
                  ),
                  colour:
                      x == Gender.male ? kActiveCardColour : kInactiveCardColour,
                )),
                Expanded(
                    child: new MyCard(
                      onpress: (){
                        setState(() {
                          x=Gender.female;
                        });
                      },
                      colour: x == Gender.female
                          ? kActiveCardColour
                          : kInactiveCardColour,
                      cardChild: IconContent(
                        iconData: FontAwesomeIcons.venus,
                        lable: 'FEMALE',
                      ),
                    )),
              ],
            )),
            Expanded(
              child: MyCard(
                colour: kInactiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('HEIGHT',
                    style: kTextstyle,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text('$hight',
                            style:kNumberstyle
                        ),
                        Text('cm',style: kTextstyle,)
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbColor: kBottomColour,
                        activeTrackColor: Colors.white,
                        inactiveTrackColor:Color(0xFf8D8E98) ,
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 14),
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 28),
                        overlayColor: Color(0x29EA1556)
                      ),
                      child: Slider(
                          value: hight.toDouble(),
                          min: 120,
                          max: 320,
                          onChanged: (double newValue){
                            setState(() {
                              hight=newValue.round();
                            });
                          }

                      ),
                    ),],
                ),
              ),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: new MyCard(
                        colour: kActiveCardColour,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('WEIGHT',style: kTextstyle,),
                          Text('$weight',style: kNumberstyle,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: (){
                                  setState(() {
                                    if(weight>0) weight--;
                                  });
                                },
                              ),
                              SizedBox(width: 10,),
                              RoundButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: (){
                                  setState(() {
                                    if(weight<=500){
                                      weight++;
                                    }
                                  });

                                },

                              ),
                            ],
                          )
                        ],
                      ),
                    )),
                Expanded(
                    child: new MyCard(
                      colour: kActiveCardColour,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('AGE',style: kTextstyle,),
                          Text('$age',style: kNumberstyle,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: (){
                                  setState(() {
                                    if(age>0) age--;
                                  });
                                },
                              ),
                              SizedBox(width: 10,),
                              RoundButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: (){
                                  setState(() {
                                    if(age<=100){
                                      age++;
                                    }
                                  });

                                },

                              ),
                            ],
                          )
                        ],
                      ),
                    )),
              ],
            )),
            BottomButton(text: 'Calculate',onTap:  (){
              CalculatorBrain calc = CalculatorBrain(hight: hight,weight: weight);

              Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultPage(bmiResult: calc.calculateBMI(),resultText: calc.getResult(),resultDiscreption: calc.getDiscription(),)));
            },)
          ],
        ));
  }
}




