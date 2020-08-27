import 'package:flutter/material.dart';
import 'package:welcome_ui_flutter/constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function pressFunction;
  final Color color, textColor;

  const RoundedButton({
    Key key,
    this.text,
    this.pressFunction,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
  
    Size sizeScreen = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      width: sizeScreen.width * 0.7,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          color: color,
          onPressed: pressFunction,
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
