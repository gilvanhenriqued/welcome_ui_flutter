import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:welcome_ui_flutter/components/rounded_input.dart';
import 'package:welcome_ui_flutter/pages/Login/components/background_login.dart';

class BodyLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size sizeScreen = MediaQuery.of(context).size;

    return BackgroundLogin(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'LOGIN',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: sizeScreen.height * 0.05,),
            SvgPicture.asset(
              'assets/icons/login.svg',
              height: sizeScreen.height * 0.45,
            ),
            RoundedInput(
              hintText: "Seu e-mail",
              onChanged: (value){

              },
            ),
          ],
        ),
      ),
    );
  }
}