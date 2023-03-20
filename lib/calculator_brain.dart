import 'dart:math';
class CalculatorBrain{
   CalculatorBrain({this.hight,this.weight});

  final int hight;
  final int weight;

  double _bmi;

  String calculateBMI(){
    _bmi = weight/pow(hight/100 ,2);
    return _bmi.toStringAsFixed(2);
}
  String getResult(){
    if(_bmi>=25){
      return 'Overweight';
    }else if(_bmi>18.5) return 'Normal';
    else return 'Underweight';
  }

  String getDiscription(){
    if(_bmi>=25){
      return 'You have higher than a normal body weight. Try to exercise more.';
    }else if(_bmi>18.5) return 'You have a normal body weight. Good job!';
    else return 'You have a lower than a norma body weight. You can eat a bit more.';
  }

}