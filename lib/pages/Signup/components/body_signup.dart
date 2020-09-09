import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:welcome_ui_flutter/components/already_have_an_account_check.dart';
import 'package:welcome_ui_flutter/components/rounded_button.dart';
import 'package:welcome_ui_flutter/components/rounded_input.dart';
import 'package:welcome_ui_flutter/components/rounded_password_input.dart';
import 'package:welcome_ui_flutter/pages/Login/login_page.dart';
import 'package:welcome_ui_flutter/pages/Signup/components/or_divider.dart';
import 'package:welcome_ui_flutter/pages/Signup/components/social_icon.dart';

class BodySignup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size sizeScreen = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: sizeScreen.height * 0.045),
          Text(
            'CADASTRAR-SE',
            style: TextStyle(
              fontWeight: FontWeight.bold
            )
          ),
          SizedBox(height: sizeScreen.height * 0.03),
          SvgPicture.asset(
            'assets/icons/signup.svg',
            height: sizeScreen.height * 0.45,
          ),
          SizedBox(height: sizeScreen.height * 0.03),
          RoundedInput(
            hintText: 'Seu e-mail',
            onChanged: (value){},
          ),
          RoundedPasswordInput(
            onChange: (value){},
          ),
          RoundedButton(
            text: 'CADASTRAR',
            pressFunction: (){},
          ),
          SizedBox(height: sizeScreen.height * 0.02,),
          AlreadyHaveAnAccountCheck(
            login: false,
            press: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => LoginPage()) 
              );
            },
          ),
          OrDivider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SocialIcon(
                iconSrc: 'assets/icons/facebook.svg',
                press: (){}
              ),
              SocialIcon(
                iconSrc: 'assets/icons/twitter.svg',
                press: (){}
              ),
              SocialIcon(
                iconSrc: 'assets/icons/google-plus.svg',
                press: (){}
              ),
            ],
          ),
          SizedBox(height: sizeScreen.height * 0.025,),
        ],
      ),
    );
  }
}
