import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:welcome_ui_flutter/components/rounded_button.dart';
import 'package:welcome_ui_flutter/constants.dart';
import 'package:welcome_ui_flutter/pages/Login/login_page.dart';
import 'package:welcome_ui_flutter/pages/Welcome/components/background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Size sizeScreen = MediaQuery.of(context).size;

    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "BEM VINDO A LILY MODAS",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: sizeScreen.height * 0.04,),
            SvgPicture.asset(
              'assets/icons/chat.svg',
              height: sizeScreen.height * 0.45,
            ),
            SizedBox(height: sizeScreen.height * 0.05,),
            RoundedButton(
              text: "ENTRAR",
              pressFunction: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context){
                      return LoginPage();
                    }
                  )
                );
              },
            ),
            RoundedButton(
              text: "CADASTRAR-SE",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              pressFunction: (){

              },
            ),
          ],
        ),
      )
    );
  }
}

