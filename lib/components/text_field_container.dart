import 'package:flutter/material.dart';
import 'package:welcome_ui_flutter/constants.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;

  const TextFieldContainer({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size sizeScreen = MediaQuery.of(context).size;

    return Container( 
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: sizeScreen.width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(29),
        color: kPrimaryLightColor,
      ),
      child: child,
    );
  }
  
}
