import 'package:flutter/material.dart';
import 'package:sena_app/B1/ui/widgets/button_exercise.dart';
import 'package:sena_app/B1/ui/widgets/list_explain.dart';
import 'package:sena_app/B1/ui/widgets/title_mixed.dart';
import 'package:sena_app/Widgets/text_general.dart';

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
      body: Column(children: [
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80),
          child: Container(
            width: 190,
            height: 35,
            decoration: BoxDecoration(
                color: Color.fromRGBO(142, 156, 147, 0.87),
                borderRadius: BorderRadius.circular(25)),
            // color: Colors.grey,
            child: TabBar(
              controller: _tabController,
              indicator: BoxDecoration(
                color: Color(0xff6BF49F),
                borderRadius: BorderRadius.circular(20),
              ),
              tabs: [
                const Tab(text: "Explain"),
                const Tab(text: "Exercises"),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          child: SizedBox(
            height: 550,
            child: TabBarView(controller: _tabController, children: [
              Container(
                // color: Colors.green,
                child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitleMixed(
                        title: TitleClass(
                            title_normal: 'The present simple form ',
                            title_bold: 'be'),
                        color: const Color(0xff1ABC75),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextGeneralClass(
                          text:
                              "The present simple of the verb to be has three form:"),
                      ListExplain(
                        list_normal: ["I", "You/We/They", "She/He/It"],
                        list_bold: ["am", "are", "is"],
                        mixed: true,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextGeneralClass(
                          text: "They = People and things",
                          color: const Color(0xff1ABC75)),
                      const SizedBox(
                        height: 10,
                      ),
                    ]),
              ),
              Container(
                child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TitleMixed(
                        title: TitleClass(
                            title_normal: 'The present simple form ',
                            title_bold: 'be'),
                        color: const Color(0xff1ABC75),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 400,
                            decoration: BoxDecoration(
                              //This option is the gradient
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromRGBO(165, 255, 130, 0.6),
                                  Color.fromRGBO(26, 188, 117, 0.6)
                                ],
                                // begin: FractionalOffset(0.0, 1.0), //Oritation for the gradient
                                // end:
                                //     FractionalOffset(1.0, 0.6), //Darkness color until where that goes
                                // stops: [0.0, 0.6], //Similar to orientation, up to down or down to up
                                // tileMode: TileMode.clamp,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              // alignment: Alignment.center,
                              child: Container(
                                width: MediaQuery.of(context).size.width - 100,
                                height:
                                    MediaQuery.of(context).size.height - 320,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(255, 255, 255, 0.7),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height - 320,
                            padding: EdgeInsets.only(bottom: 10),
                            child: ListView(
                              children: [
                                ButtonExercise(
                                  title: "Topic 1 ",
                                  subtitle: "Complete exercise",
                                ),
                                ButtonExercise(
                                  title: "Topic 1 ",
                                  subtitle: "Complete exercise",
                                ),
                                ButtonExercise(
                                  title: "Topic 1 ",
                                  subtitle: "Complete exercise",
                                ),
                                ButtonExercise(
                                  title: "Topic 1 ",
                                  subtitle: "Complete exercise",
                                ),
                                ButtonExercise(
                                  title: "Topic 1 ",
                                  subtitle: "Complete exercise",
                                ),
                                ButtonExercise(
                                  title: "Topic 1 ",
                                  subtitle: "Complete exercise",
                                ),
                                ButtonExercise(
                                  title: "Topic 1 ",
                                  subtitle: "Complete exercise",
                                ),
                                ButtonExercise(
                                  title: "Topic 1 ",
                                  subtitle: "Complete exercise",
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ]),
              )
            ]),
          ),
        )
      ]),
    );
  }
}
