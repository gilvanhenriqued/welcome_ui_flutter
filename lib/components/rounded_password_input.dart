import 'package:flutter/material.dart';
import 'package:welcome_ui_flutter/components/text_field_container.dart';
import 'package:welcome_ui_flutter/constants.dart';

class RoundedPasswordInput extends StatelessWidget {
  final ValueChanged<String> onChange;

  const RoundedPasswordInput({
    Key key, this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Sua senha',
          icon: Icon(
            Icons.lock, 
            color: kPrimaryColor
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
        ),
        onChanged: onChange,
      ),
    );
  }
}