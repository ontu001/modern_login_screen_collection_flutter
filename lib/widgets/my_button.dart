import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget MyButton(String title , onPressed) {
  return SizedBox(
    height: 50,
    width: 200,
    child: ElevatedButton(
      onPressed: onPressed,
      child: Text(title),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.black),
        textStyle: MaterialStateProperty.all(TextStyle(fontSize: 16)),
      ),
    ),
  );
}