import 'package:flutter/material.dart';

class TitleTextClass extends StatelessWidget {
  final String text;
  final Color color;

  TitleTextClass({super.key, this.text = "", this.color = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: 32, fontWeight: FontWeight.bold),
    );
  }
}
