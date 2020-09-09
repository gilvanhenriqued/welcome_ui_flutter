import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:welcome_ui_flutter/components/already_have_an_account_check.dart';
import 'package:welcome_ui_flutter/components/rounded_button.dart';
import 'package:welcome_ui_flutter/components/rounded_input.dart';
import 'package:welcome_ui_flutter/components/rounded_password_input.dart';
import 'package:welcome_ui_flutter/constants.dart';
import 'package:welcome_ui_flutter/pages/Login/components/background_login.dart';
import 'package:welcome_ui_flutter/pages/Signup/signup_page.dart';

class BodyLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size sizeScreen = MediaQuery.of(context).size;

    return BackgroundLogin(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           SizedBox(height: sizeScreen.height * 0.045),
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
            RoundedPasswordInput(
              onChange: (value){

              },
            ),
            RoundedButton(
              color: kPrimaryColor,
              pressFunction: (){

              },
              text: 'LOGIN',
            ),
            SizedBox(height: sizeScreen.height * 0.02,),
            AlreadyHaveAnAccountCheck(
              login: true,
              press: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => SignupPage()),  
                );
              },
            ),
            SizedBox(height: sizeScreen.height * 0.025),            
          ],
        ),
      ),
    );
  }
}