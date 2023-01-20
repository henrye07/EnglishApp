import 'package:flutter/material.dart';
import 'package:sena_app/B1/ui/widgets/HomeCoursesB1.dart';

class B1Courses extends StatefulWidget {
  B1Courses({super.key});

  @override
  State<B1Courses> createState() => _B1CoursesState();
}

class _B1CoursesState extends State<B1Courses> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController =
        TabController(length: 2, vsync: this, initialIndex: 0);
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
      body: HomeCoursesB1(),
    );
  }
}
