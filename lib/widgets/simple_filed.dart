import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SimpleForm extends StatelessWidget {
  final String hintText;
  final bool obsecureText;
  final controller;
  final Icon suffixIcon;

  const SimpleForm({
    required this.controller,
    required this.hintText,
    required this.obsecureText,
    required this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0),
      child: TextField(
        obscureText: obsecureText,
        controller: controller,
        decoration: InputDecoration(
            hoverColor: Colors.purple,
            suffixIconColor: Colors.purple,
         
            hintText: hintText,
            suffixIcon: suffixIcon),
      ),
    );
  }
}
