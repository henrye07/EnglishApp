import 'package:flutter/material.dart';
import 'package:sena_app/course_list.dart';
import 'package:sena_app/gradient_back.dart';
import 'package:sena_app/name_bar.dart';

class HomeCourses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
            children: <Widget>[
              ListView(
                children: [
                  Container(
                    height: 100,
                  ),
                  GradientBack("A1 Grammar lessons and exercises"),
                  CourseList()
                ],
              ),
              NameBar("Sena APP"),
            ],
          );
  }
}
