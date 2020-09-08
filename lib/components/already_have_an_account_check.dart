import 'package:flutter/material.dart';
import 'package:welcome_ui_flutter/constants.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press; 

  const AlreadyHaveAnAccountCheck({
    Key key, this.press, this.login,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? 'Não tem uma conta? ' : 'Já tem uma conta?',
          style: TextStyle(
            color: kPrimaryColor,
          ),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? 'Cadastre-se ' : 'Entre',
            style: TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
            
          ),
        )
        
      ],
    );
  }
}