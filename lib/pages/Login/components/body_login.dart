import 'package:flutter/material.dart';
import 'package:welcome_ui_flutter/pages/Login/components/background_login.dart';

class BodyLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BackgroundLogin(
      child: Text('Login Page'),
    );
  }
}