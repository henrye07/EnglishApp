import 'package:flutter/material.dart';

class TitleClass {
  String title_normal;
  String title_bold;

  TitleClass({this.title_normal = "", this.title_bold = ""});
}

class TitleMixed extends StatelessWidget {
  final Color color;
  final TitleClass? title;
  TitleMixed({super.key, this.title, this.color = Colors.black});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: const TextStyle(
          color: Color(0xff1ABC75),
          fontSize: 32,
        ),
        children: [
          TextSpan(
              text: title?.title_normal,
              style: TextStyle(fontWeight: FontWeight.w400)),
          // TextSpan(text: ''),
          TextSpan(
              text: title?.title_bold,
              style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
