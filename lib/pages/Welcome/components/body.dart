import 'package:flutter/material.dart';
import 'package:welcome_ui_flutter/pages/Welcome/components/background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "SEJA BEM VINDO A LILY MODAS",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      )
    );
  }
}

