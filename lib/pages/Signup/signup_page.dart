import 'package:flutter/material.dart';
import 'package:welcome_ui_flutter/pages/Signup/components/background_signup.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size sizeScreen = MediaQuery.of(context).size;

    return Scaffold(
      body: BackgroundSignup(),
    );
  }
}