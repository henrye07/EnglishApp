import 'package:flutter/material.dart';
import 'package:sena_app/Courses/ui/widgets/description_class.dart';
import 'description_class.dart';

class CourseList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        DescriptionClass("This, that, these, those",
            "assets/img/first_course.png", "/b1/topic1"),
        DescriptionClass("This, that, these, those",
            "assets/img/second_course.png", "/b1/topic1"),
        DescriptionClass("This, that, these, those",
            "assets/img/third_course.png", "/b1/topic1"),
        DescriptionClass("This, that, these, those",
            "assets/img/fourth_course.png", "/b1/topic1"),
        Container(
          height: 50,
        ),
      ],
    );
  }
}
