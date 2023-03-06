import 'package:flutter/material.dart';
import 'package:sena_app/assets/constants.dart' as constants;

class TitleClass {
  String title_normal;
  String title_bold;

  TitleClass({this.title_normal = "", this.title_bold = ""});
}

class TitleMixed extends StatelessWidget {
  final Color color;
  final double text_size;
  final TitleClass? title;
  TitleMixed(
      {super.key,
      this.title,
      this.color = constants.primary_color,
      this.text_size = 32});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(
          color: color,
          fontSize: text_size,
        ),
        children: [
          TextSpan(
              text: title?.title_normal,
              style: TextStyle(fontWeight: FontWeight.w400)),
          TextSpan(
              text: title?.title_bold,
              style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
