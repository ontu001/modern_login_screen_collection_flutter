import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget{
  final controller;
  final String hintText;
  final bool obsecurreText;


  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obsecurreText
});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        obscureText: obsecurreText,
        controller: controller,
        decoration: InputDecoration(
          hintStyle: TextStyle(
            fontSize: 14,
            color: Colors.black26
          ),
          hintText: hintText,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white)
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
          ),
          fillColor: Colors.grey.shade100,
          filled: true,
        ),
      ),
    );
  }

}