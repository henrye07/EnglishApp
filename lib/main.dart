import 'package:flutter/material.dart';
import 'package:sena_app/course_list.dart';
import 'package:sena_app/description_class.dart';
import 'package:sena_app/gradient_back.dart';
import 'package:sena_app/name_bar.dart';
import 'course_list.dart';

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
        home: Scaffold(
          // appBar: AppBar(
          //   //Header
          //   title: Text("Hola Mundo"),
          // ),
          body: Stack(
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
          ),
          // body: new CourseList(),
          // body: new DescriptionClass(
          //     "This, That, these, those", "assets/img/first_course.png"),
        )
        // const MyHomePage(title: 'Flutter Demo Home Page'),
        );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
