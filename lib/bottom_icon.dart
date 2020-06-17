import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.bottomText, @required this.onClick});
  final String bottomText;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        child: Center(
          child: Text(
            bottomText,
            style: kContainerStyle,
          ),
        ),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(
          top: 10,
        ),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  @override
  RoundIconButton({@required this.icon, this.onPress});

  final IconData icon;
  final Function onPress;

  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      elevation: 10.0,
      child: Icon(icon),
      shape: CircleBorder(),
      fillColor: Color(0xFF4c4F5E),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
    );
  }
}