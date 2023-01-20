import 'package:flutter/material.dart';
// import 'package:sena_app/favorite_courses.dart';
import 'package:sena_app/Courses/ui/widgets/home_courses.dart';
// import 'package:sena_app/person_course.dart';
// import 'package:sena_app/search_courses.dart';

class SenaCourses extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SenaCourses();
  }
}

class _SenaCourses extends State<SenaCourses> {
  // int indexTap = 0;
  // final List<Widget> widgetsChildren = [
  //   HomeCourses(),
  //   SearchCouses(),
  //   PersonCourse(),
  //   FavoriteCourses(),
  // ];

  // void onTapTapped(int index) {
  //   setState(() {
  //     //Controlar el estado del widget
  //     indexTap = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sena App',
          style: TextStyle(fontSize: 30),
        ),
        shadowColor: Theme.of(context).colorScheme.shadow,
        toolbarHeight: 70,
        automaticallyImplyLeading: false,
      ),
      body: HomeCourses(),
      // body: widgetsChildren[indexTap],
      // bottomNavigationBar:
      //     // Theme(
      //     // data: Theme.of(context)
      //     //     .copyWith(canvasColor: Colors.white, primaryColor: Colors.purple),
      //     // child:
      //     BottomNavigationBar(
      //         onTap: onTapTapped,
      //         currentIndex: indexTap,
      //         selectedItemColor: Colors.green[800],
      //         unselectedItemColor: Colors.black45,
      //         items: [
      //       BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
      //       BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
      //       BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
      //       BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "")
      //     ])
      // )
      // ,
    );
  }
}
