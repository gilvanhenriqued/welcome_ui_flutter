import 'package:flutter/material.dart';
import 'package:welcome_ui_flutter/pages/Signup/components/background_signup.dart';
import 'package:welcome_ui_flutter/pages/Signup/components/body_signup.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundSignup(
        child: BodySignup()
      ),
    );
  }
}