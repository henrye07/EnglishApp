import 'package:flutter/material.dart';
import 'package:sena_app/Courses/ui/widgets/course_list.dart';
import 'package:sena_app/Widgets/gradient_back.dart';
import 'package:sena_app/Widgets/gradient_title.dart';
// import 'package:sena_app/Widgets/name_bar.dart';

class HomeCourses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(
          children: [
            // Container(
            //   height: 100,
            // ),
            // GradientBack(
            //   title: "A1 Grammar lessons and exercises",
            //   height: 80,
            // ),
            // GradientTitle(title: "A1 Grammar lessons and exercises"),
            CourseList()
          ],
        ),
        // NameBar("Sena APP"),
      ],
    );
  }
}
