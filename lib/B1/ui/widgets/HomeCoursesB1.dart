import 'package:flutter/material.dart';
import 'package:sena_app/B1/ui/widgets/CourseListB1.dart';


class HomeCoursesB1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(
          children: [CourseListB1()],
        ),
      ],
    );
  }
}
