import 'package:flutter/material.dart';
import 'login_ui/ui_2.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Modern UI',
      home: LoginUITwo(),
    );
  }

}