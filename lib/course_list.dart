import 'package:flutter/material.dart';
import 'package:sena_app/description_class.dart';
import 'description_class.dart';

class CourseList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        DescriptionClass(
            "This, that, these, those", "assets/img/first_course.png"),
        DescriptionClass(
            "This, that, these, those", "assets/img/second_course.png"),
        DescriptionClass(
            "This, that, these, those", "assets/img/third_course.png"),
        DescriptionClass(
            "This, that, these, those", "assets/img/fourth_course.png"),
        Container(
          height: 50,
        ),
      ],
    );
  }
}
