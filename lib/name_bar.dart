import 'package:flutter/material.dart';

class NameBar extends StatelessWidget {
  String title;

  NameBar(this.title);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 120,
      decoration: BoxDecoration(
        //This option is the gradient
        color: Colors.white,
      ),
      child: Text(
        title,
        style: TextStyle(
            color: Colors.black, fontSize: 32.0, fontWeight: FontWeight.bold),
        textAlign: TextAlign.left,
      ),
      alignment: Alignment(-0.9, 0.25),
    );
  }
}
