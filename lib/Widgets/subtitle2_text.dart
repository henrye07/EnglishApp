import 'package:flutter/material.dart';

class Subtitle2TextClass extends StatelessWidget {
  final String text;
  final Color color;

  Subtitle2TextClass({super.key, this.text = "", this.color = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: 24, fontWeight: FontWeight.w500),
    );
  }
}