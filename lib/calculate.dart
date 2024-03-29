import 'dart:math';

class CalculatorBrain{
  CalculatorBrain({this.height,this.weight});
  final int height;
  final int weight;
  double _bmi=0;

  String calBMI(){
    double _bmi=weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getRes(){
    _bmi=weight /pow(height/100, 2);
    if(_bmi >= 25) {
      return 'Over Weight';
    }
    else if(_bmi > 18.5) {
      return 'Normal';
    }
    else {
      return 'Under Weight';
    }
  }

  String getInterpretation(){
    if(_bmi >= 25) {
      return 'You have higher than a normmal body weight. Try to excercise more.';
    }
    else if(_bmi > 18.5) {
      return 'You have a normal body weight . Good Job!';
    }
    else {
      return 'You have lower than the normal body weight . You can eat a bit more .';
    }
  }
}