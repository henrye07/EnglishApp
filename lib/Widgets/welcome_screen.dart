import 'package:flutter/material.dart';
import 'package:sena_app/Widgets/button_general.dart';
import 'package:sena_app/Widgets/gradient_back.dart';
import 'package:sena_app/sena_courses.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          GradientBack(
            height: null,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(left: 15, right: 15),
                child: Text(
                  "Welcome \n This is your English App",
                  style: TextStyle(
                      fontSize: 34.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              ButtonGeneral(
                text: "Let's go!",
                onPressed: () {
                  _welcomeScreen(context);
                },
                width: 300,
                height: 50,
              )
            ],
          )
        ],
      ),
    );
  }

  void _welcomeScreen(BuildContext context) {
    final route = MaterialPageRoute(builder: (BuildContext context) {
      return SenaCourses();
    });
    Navigator.of(context).push(route);
  }
}
