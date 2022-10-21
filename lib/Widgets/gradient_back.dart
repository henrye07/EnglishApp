import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget {
  String title;
  double? height;

  GradientBack({super.key, this.title = "", this.height = 0.0});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    if (height == null) {
      height = screenHeight;
    }

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
      child: FittedBox(
        fit: BoxFit.none,
        alignment: Alignment(-1.5, -0.8),
        child: Container(
          width: screenHeight,
          height: screenHeight,
          decoration: BoxDecoration(
              color: Color.fromRGBO(0, 0, 0, 0.05),
              borderRadius: BorderRadius.circular(screenHeight / 2)),
        ),
      ),
      // Text(
      //   title,
      //   style: TextStyle(
      //       color: Colors.white, fontSize: 26.0, fontWeight: FontWeight.bold),
      //   textAlign: TextAlign.center,
      // ),
      // alignment: Alignment(-0.5, 0.3),
    );
  }
}
