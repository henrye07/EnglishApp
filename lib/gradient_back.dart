import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget {
  String title;

  GradientBack(this.title);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 80,
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
      child: Text(
        title,
        style: TextStyle(
            color: Colors.white, fontSize: 26.0, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
      alignment: Alignment(-0.5, 0.3),
    );
  }
}
