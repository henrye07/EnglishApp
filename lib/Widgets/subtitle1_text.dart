import 'package:flutter/material.dart';

class Subtitle1TextClass extends StatelessWidget {
  final String text;
  final Color color;

  Subtitle1TextClass({super.key, this.text = "", this.color = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: 32, fontWeight: FontWeight.w500),
    );
  }
}