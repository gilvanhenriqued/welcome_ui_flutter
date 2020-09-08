import 'package:flutter/material.dart';
import 'package:welcome_ui_flutter/components/text_field_controller.dart';
import 'package:welcome_ui_flutter/constants.dart';

class RoundedInput extends StatelessWidget {
  final IconData icon;
  final String hintText;
  final ValueChanged<String> onChanged;

  const RoundedInput({
    Key key, 
    this.icon = Icons.person,
    this.hintText,
    this.onChanged
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          icon: Icon(icon, color: kPrimaryColor,),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}