import 'package:flutter/material.dart';
import 'package:sena_app/Courses/ui/widgets/description_class.dart';
import 'description_class.dart';

class CourseList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        DescriptionClass("A1", "assets/img/first_course.png", "/b1"),
        DescriptionClass("A2", "assets/img/second_course.png", "/b1"),
        DescriptionClass("B1", "assets/img/third_course.png", "/b1"),
        DescriptionClass("B1+", "assets/img/fourth_course.png", "/b1"),
        DescriptionClass("B2", "assets/img/fourth_course.png", "/b1"),
        Container(
          height: 50,
        ),
      ],
    );
  }
}
