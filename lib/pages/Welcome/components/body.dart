import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:welcome_ui_flutter/components/rounded_button.dart';
import 'package:welcome_ui_flutter/constants.dart';
import 'package:welcome_ui_flutter/pages/Welcome/components/background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Size sizeScreen = MediaQuery.of(context).size;

    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "SEJA BEM VINDO A LILY MODAS",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SvgPicture.asset(
            'assets/icons/chat.svg',
            height: sizeScreen.height * 0.45,
          ),
          RoundedButton(
            text: "LOGIN",
            pressFunction: (){

            },
          ),
          RoundedButton(
            text: "LOGIN",
            pressFunction: (){

            },
          ),
        ],
      )
    );
  }
}

