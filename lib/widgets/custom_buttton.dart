import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buTton(String title, onpressed) {
  return SizedBox(
    height: 45,
    width: 200,
    child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
        onPressed: onpressed,
        child: Text(title)),
  );
}
