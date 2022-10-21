import 'dart:ffi';

import 'package:flutter/material.dart';

class ButtonGeneral extends StatefulWidget {
  final String text;
  double width;
  double height;
  final VoidCallback onPressed;

  ButtonGeneral(
      {super.key,
      required this.text,
      required this.onPressed,
      this.width = 0,
      this.height = 0});

  @override
  State<StatefulWidget> createState() => _ButtonGeneral();
}

class _ButtonGeneral extends State<ButtonGeneral> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
          margin: EdgeInsets.only(top: 30, left: 20, right: 20),
          width: widget.width,
          height: widget.height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              colors: [Color(0xFFa7ff84), Color(0xFF1cbb78)],
              begin: FractionalOffset(0.2, 0.0),
              end: FractionalOffset(1.0, 0.6),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp,
            ),
          ),
          child: Text(
            widget.text,
            style: TextStyle(
                color: Colors.white,
                fontSize: 26.0,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          alignment: Alignment.center),
    );
  }
}
