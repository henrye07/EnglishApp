import 'package:flutter/material.dart';

class GradientTitle extends StatelessWidget {
  String title;
  double size_title;
  double height;

  GradientTitle({this.title = "", this.size_title = 12, this.height = 80});

  @override
  Widget build(BuildContext context) {
    // double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth,
      height: height,
      decoration: BoxDecoration(
        //This option is the gradient
        gradient: LinearGradient(
          colors: [Color(0xFF4268D3), Color(0xFF584CD1)],
          begin: FractionalOffset(0.2, 0.0), //Oritation for the gradient
          end:
              FractionalOffset(1.0, 0.6), //Darkness color until where that goes
          stops: [0.0, 0.6], //Similar to orientation, up to down or down to up
          tileMode: TileMode.clamp,
        ),
      ),
      child: Center(
          child: Text(
        title,
        style: TextStyle(
            color: Colors.white,
            fontSize: size_title,
            fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      )),
    );
  }
}
