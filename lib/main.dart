import 'package:flutter/material.dart';
import 'package:sena_app/B1/ui/screens/b1_courses.dart';
import 'package:sena_app/B1/ui/screens/present_simple_and_continuous/exercises/topic1.dart';
import 'package:sena_app/B1/ui/screens/present_simple_and_continuous/explain_present_simple_continuos.dart';
import 'package:sena_app/welcome_screen.dart';
import 'package:sena_app/Courses/ui/screens/sena_courses.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: B1Courses(),
      initialRoute: "/",
      routes: {
        "/": (context) => WelcomeScreen(),
        "/courses": (context) => SenaCourses(),
        "/b1": (context) => B1Courses(),
        "/b1/topic1/explain": (context) => ExplainPresentSimpleContinuos(),
        "/b1/topic1/exercesises/topic1": (context) => Topic1ExerciseComplete(),
      },
    );
  }
}
