import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sena_app/B1/ui/screens/b1_courses.dart';
import 'package:sena_app/B1/ui/screens/present_simple_and_continuous/exercises/topic1_complete.dart';
import 'package:sena_app/B1/ui/screens/present_simple_and_continuous/explain_present_simple_continuos.dart';
import 'package:sena_app/welcome_screen.dart';
import 'package:sena_app/Courses/ui/screens/sena_courses.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends HookConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
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
        "/b1/topic1/exercesises/topic1": (context) => Topic1Exercise(),
      },
    );
  }
}
