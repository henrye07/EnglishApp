import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sena_app/Widgets/floating_action_button.dart';

class DescriptionClassB1 extends StatelessWidget {
  String title;
  String pathImage;
  String route;

  DescriptionClassB1(this.title, this.pathImage, this.route);

  @override
  Widget build(BuildContext context) {
    final image_class = Container(
      margin: EdgeInsets.only(
        top: 50,
        right: 15,
        left: 15,
      ),
      // child: Image(fit: BoxFit.cover, image: AssetImage(pathImage)),
      width: MediaQuery.of(context).size.width,
      height: 150,
      decoration: BoxDecoration(
        image: DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage)),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
        shape: BoxShape.rectangle,
      ),

      // decoration: BoxDecoration( //This work with decoration objects
      //     image:
      //         DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage))),
    );
    final title_class = Container(
      margin: new EdgeInsets.only(
          // top: 10,
          right: 15,
          left: 15),
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: Text(
        title,
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
        textAlign: TextAlign.left,
      ),
      decoration: BoxDecoration(
        //This option is the gradient
        color: Colors.white,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
        shape: BoxShape.rectangle,
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black38, blurRadius: 15, offset: Offset(0.0, 7.0))
        ],
      ),
      alignment: Alignment(-0.9, 0.0),
    );

    return InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(route);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [image_class, FloatingActionButtonGreen()],
              alignment: const Alignment(0.9, 1),
            ),
            title_class,
          ],
        ));
  }
}
