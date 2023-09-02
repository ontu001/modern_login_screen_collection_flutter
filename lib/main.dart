import 'package:flutter/material.dart';
import 'package:modern_login_screen_collection_flutter/login_ui/ui_1.dart';
import 'package:modern_login_screen_collection_flutter/login_ui/ui_2.dart';
import 'login_ui/ui_3.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Modern UI',
      home: LoginUIthree(),
    );
  }
}
