import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget MyButtonT(String title) {
  return Center(
    child: Container(
      height: 50,
      width: 200,
      margin: EdgeInsets.symmetric(horizontal: 50),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.purpleAccent),
      child: Center(
        child: Text(
          title,
          style: TextStyle(fontSize: 15, color: Colors.white),
        ),
      ),
    ),
  );
}
