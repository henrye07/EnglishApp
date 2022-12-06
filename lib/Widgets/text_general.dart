import 'package:flutter/material.dart';

class TextGeneralClass extends StatelessWidget {
  final String text;
  final Color color;
  final double text_size;
  final FontWeight font_weight;

  TextGeneralClass(
      {super.key,
      this.text = "",
      this.color = Colors.black,
      this.text_size = 16,
      this.font_weight = FontWeight.w400});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(color: color, fontSize: text_size, fontWeight: font_weight),
    );
  }
}
