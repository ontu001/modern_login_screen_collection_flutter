import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignOption extends StatelessWidget {
  final String Link;
  const SignOption({required this.Link});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(16),
          color: Colors.grey[200]),
      child: Image.network(
        Link,
        height: 50,
        width: 50,
      ),
    );
  }
}
