import 'package:flutter/material.dart';
import 'package:sena_app/B1/ui/widgets/button_exercise.dart';
import 'package:sena_app/B1/ui/widgets/list_explain.dart';
import 'package:sena_app/B1/ui/widgets/list_multiple.dart';
import 'package:sena_app/B1/ui/widgets/title_mixed.dart';
import 'package:sena_app/B1/ui/widgets/title_multiple.dart';
import 'package:sena_app/Widgets/text_general.dart';

class ExplainPresentSimpleContinuos extends StatefulWidget {
  ExplainPresentSimpleContinuos({super.key});

  @override
  State<ExplainPresentSimpleContinuos> createState() =>
      _ExplainPresentSimpleContinuosState();
}

class _ExplainPresentSimpleContinuosState
    extends State<ExplainPresentSimpleContinuos> with TickerProviderStateMixin {
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
              SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitleMultiple(
                        first_phrase: 'Present Simple or Present Continuous',
                        color: const Color(0xff1ABC75),
                        font_weight: FontWeight.w500,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TitleMultiple(
                        first_phrase: 'Present simple – short forms',
                        color: const Color(0xff1ABC75),
                        font_weight: FontWeight.w400,
                        text_size: 18,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      // TextGeneralClass(text: "Present simple – short forms"),
                      TextGeneralClass(
                          text:
                              "We normally use short forms in spoken English."),
                      ListExplain(
                        list_normal: ["I", "You/We/They", "She/He/It"],
                        list_bold: ["am", "are", "is"],
                        mixed: true,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TitleMultiple(
                        first_phrase: 'Present continuous – short forms',
                        color: const Color(0xff1ABC75),
                        font_weight: FontWeight.w400,
                        text_size: 18,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextGeneralClass(
                          text:
                              "We normally use short forms in spoken English."),
                      ListMultiple(
                        first_list: ["am not =", "is not =", "are not ="],
                        second_list: [
                          " 'm not",
                          " isn't / 's not",
                          " aren't / 're not"
                        ],
                        third_list: ["", "", ""],
                        colors_bold: [
                          Colors.black,
                          Color(0xffec6825),
                          Colors.black
                        ],
                        font_weight: [
                          FontWeight.w400,
                          FontWeight.bold,
                          FontWeight.w400,
                        ],
                        mixed: true,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TitleMultiple(
                        first_phrase: 'Present Simple use',
                        color: const Color(0xff1ABC75),
                        font_weight: FontWeight.w500,
                        text_size: 28,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TitleMultiple(
                        first_phrase:
                            'Habits or situations that happen regularly',
                        color: const Color(0xff1ABC75),
                        font_weight: FontWeight.w400,
                        text_size: 18,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextGeneralClass(
                          text:
                              "We use the present simple to ta,j about actions that we do (o we don't do) regularly:"),
                      ListMultiple(
                        first_list: ["I", "I never", "I sometimes"],
                        second_list: [" wash ", " go ", " go "],
                        third_list: [
                          "my hair every day",
                          "to the library",
                          "to the library"
                        ],
                        colors_bold: [
                          Colors.black,
                          Color(0xffec6825),
                          Colors.black
                        ],
                        font_weight: [
                          FontWeight.w400,
                          FontWeight.bold,
                          FontWeight.w400
                        ],
                        mixed: true,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TitleMultiple(
                        first_phrase:
                            'Permanent situations or things that are usually or often true',
                        color: const Color(0xff1ABC75),
                        font_weight: FontWeight.w400,
                        text_size: 18,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ListMultiple(
                        first_list: ["I", "She", "I", "Water", "I"],
                        second_list: [
                          " don't drink ",
                          "'s ",
                          " have ",
                          " boils ",
                          " like "
                        ],
                        third_list: [
                          "coffee.",
                          "very tall.",
                          "two brothers.",
                          "at 100 degrees.",
                          "soup."
                        ],
                        colors_bold: [
                          Colors.black,
                          Color(0xffec6825),
                          Colors.black
                        ],
                        font_weight: [
                          FontWeight.w400,
                          FontWeight.bold,
                          FontWeight.w400
                        ],
                        mixed: true,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TitleMultiple(
                        first_phrase: 'Adverbs of frequency',
                        color: const Color(0xff1ABC75),
                        font_weight: FontWeight.w400,
                        text_size: 18,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextGeneralClass(
                          text:
                              "We often use the present simple with adverbs of frequency (always, sometimes, etc.) and expressions of frequency (once every three months, twice a week, every other day, etc.)."),
                      const SizedBox(
                        height: 10,
                      ),
                      TextGeneralClass(
                          text:
                              "Adverbs of frequency go in mind position (before the main verb or after be)."),
                      ListMultiple(
                        first_list: ["She doesn't", "He", "I am"],
                        second_list: [
                          " often ",
                          " usually ",
                          " never ",
                        ],
                        third_list: [
                          "eat hamburgers.",
                          "gets up very early.",
                          "late.",
                        ],
                        colors_bold: [
                          Colors.black,
                          Color(0xffec6825),
                          Colors.black
                        ],
                        font_weight: [
                          FontWeight.w400,
                          FontWeight.bold,
                          FontWeight.w400
                        ],
                        mixed: true,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextGeneralClass(
                          text:
                              "Expressions of frequency go at the end of the sentence"),
                      ListMultiple(
                        first_list: ["We go to the cinema", "I buy clothes"],
                        second_list: [
                          " once a month.",
                          " twice a year.",
                        ],
                        third_list: [
                          "",
                          "",
                        ],
                        colors_bold: [
                          Colors.black,
                          Color(0xffec6825),
                          Colors.black
                        ],
                        font_weight: [
                          FontWeight.w400,
                          FontWeight.bold,
                          FontWeight.w400
                        ],
                        mixed: true,
                      ),

                      const SizedBox(
                        height: 15,
                      ),
                      TitleMultiple(
                        first_phrase: 'Future events that are timetabled',
                        color: const Color(0xff1ABC75),
                        font_weight: FontWeight.w400,
                        text_size: 18,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextGeneralClass(
                          text:
                              "We use the present simple to talk about future events that are scheduled or timetabled."),
                      ListMultiple(
                        first_list: ["The train", "Shops", "My yoga class"],
                        second_list: [" leaves ", " close ", " is "],
                        third_list: ["at 4.", "at 6.", "tomorrow at 10."],
                        colors_bold: [
                          Colors.black,
                          Color(0xffec6825),
                          Colors.black
                        ],
                        font_weight: [
                          FontWeight.w400,
                          FontWeight.bold,
                          FontWeight.w400
                        ],
                        mixed: true,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TitleMultiple(
                        first_phrase: 'Present continuous use',
                        color: const Color(0xff1ABC75),
                        font_weight: FontWeight.w500,
                        text_size: 28,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TitleMultiple(
                        first_phrase: 'Actions in progress',
                        color: const Color(0xff1ABC75),
                        font_weight: FontWeight.w400,
                        text_size: 18,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextGeneralClass(
                          text:
                              "We use the present continuous to talk about things that are happening now or 'around now' (a time arount this moment, such as these days, week or months)"),
                      ListMultiple(
                        first_list: [
                          "I can't talk know. I",
                          "I finished the Lord of the RIngs and now. I"
                        ],
                        second_list: ["'m brushing ", "'m reading "],
                        third_list: ["my teeth.", "a new book."],
                        colors_bold: [
                          Colors.black,
                          Color(0xffec6825),
                          Colors.black
                        ],
                        font_weight: [
                          FontWeight.w400,
                          FontWeight.bold,
                          FontWeight.w400
                        ],
                        mixed: true,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TitleMultiple(
                        first_phrase: 'Temporary actions',
                        color: const Color(0xff1ABC75),
                        font_weight: FontWeight.w400,
                        text_size: 18,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextGeneralClass(
                          text:
                              "The present continuous is used to talk about temporary actions:"),
                      ListMultiple(
                        first_list: ["I", "I"],
                        second_list: ["'m going ", "'m living "],
                        third_list: [
                          "to work by bus this week beacuase my car is at the garage.",
                          "with my cousins until I find a flat."
                        ],
                        colors_bold: [
                          Colors.black,
                          Color(0xffec6825),
                          Colors.black
                        ],
                        font_weight: [
                          FontWeight.w400,
                          FontWeight.bold,
                          FontWeight.w400
                        ],
                        mixed: true,
                      ),

                      const SizedBox(
                        height: 10,
                      ),
                      TitleMultiple(
                        first_phrase:
                            "With expressions meaning 'now' or 'around now'",
                        color: const Color(0xff1ABC75),
                        font_weight: FontWeight.w400,
                        text_size: 18,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextGeneralClass(
                          text:
                              "The present continuous often apperars next to expressions such as now, these days, this week/month, or at the moment."),
                      ListMultiple(
                        first_list: ["He", "I"],
                        second_list: ["'s studying ", "'m not feeling "],
                        third_list: [
                          "a lot this week.",
                          "very well these days."
                        ],
                        colors_bold: [
                          Colors.black,
                          Color(0xffec6825),
                          Colors.black
                        ],
                        font_weight: [
                          FontWeight.w400,
                          FontWeight.bold,
                          FontWeight.w400
                        ],
                        mixed: true,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TitleMultiple(
                        first_phrase:
                            "Situacions that are changing or developing",
                        color: const Color(0xff1ABC75),
                        font_weight: FontWeight.w400,
                        text_size: 18,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ListMultiple(
                        first_list: [
                          "The climate",
                          "More and more people",
                          "Your English"
                        ],
                        second_list: [
                          " is changing ",
                          " are trying ",
                          " is improving."
                        ],
                        third_list: [
                          "very quickly.",
                          "to eat moe healthily nowadays.",
                          ""
                        ],
                        colors_bold: [
                          Colors.black,
                          Color(0xffec6825),
                          Colors.black
                        ],
                        font_weight: [
                          FontWeight.w400,
                          FontWeight.bold,
                          FontWeight.w400
                        ],
                        mixed: true,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TitleMultiple(
                        first_phrase: "Future arrangements",
                        color: const Color(0xff1ABC75),
                        font_weight: FontWeight.w400,
                        text_size: 18,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextGeneralClass(
                          text:
                              "We use the present continuous to talk or ask about future actions that are already planned or decided."),
                      ListMultiple(
                        first_list: [
                          "I",
                          "We",
                        ],
                        second_list: [
                          "'m meeting ",
                          " are leaving ",
                        ],
                        third_list: [
                          "John this evening. Do you want to come?",
                          "tomorrow at 7.",
                        ],
                        colors_bold: [
                          Colors.black,
                          Color(0xffec6825),
                          Colors.black
                        ],
                        font_weight: [
                          FontWeight.w400,
                          FontWeight.bold,
                          FontWeight.w400
                        ],
                        mixed: true,
                      ),

                      const SizedBox(
                        height: 15,
                      ),
                      TitleMultiple(
                        first_phrase: 'Stative verbs',
                        color: const Color(0xff1ABC75),
                        font_weight: FontWeight.w500,
                        text_size: 28,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextGeneralClass(
                          text:
                              "Non-actions verbs (or stative verbs) cannot be used in present contuous. They must be used in present simple. The most frequent are the verbs of the senses (hear, see, smell, look, seem, sound), verbs of opinion (beliveve, consider, like, love, hate, prefer, think, etc.) verbs of possession (have, own,belong, etc.). Other common non-action verbs are: agree, be, depend, need, mean, remember, realise, recognise, seem, want, etc."),
                      ListMultiple(
                        first_list: [
                          "Please, give me my money; I",
                          "Look at her; she",
                        ],
                        second_list: [
                          " need ",
                          " seems ",
                        ],
                        third_list: [
                          "it now.",
                          "sad.",
                        ],
                        colors_bold: [
                          Colors.black,
                          Color(0xffec6825),
                          Colors.black
                        ],
                        font_weight: [
                          FontWeight.w400,
                          FontWeight.bold,
                          FontWeight.w400
                        ],
                        mixed: true,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextGeneralClass(
                          text:
                              "Some verbs have an action and a non-action meaning; for example, have or think:"),
                      ListMultiple(
                        first_list: ["I", "I"],
                        second_list: [" have ", " think "],
                        third_list: [
                          "a car (posession) / I",
                          "he is great (=opinion) / What"
                        ],
                        four_list: ["'m having ", " are "],
                        five_list: ["a siesta (=action)", "you"],
                        six_list: ["", " thinking"],
                        seven_list: ["", "? (=action)"],
                        colors_bold: [
                          Colors.black,
                          Color(0xffec6825),
                          Colors.black,
                          Color(0xffec6825),
                          Colors.black,
                          Color(0xffec6825),
                          Colors.black,
                        ],
                        font_weight: [
                          FontWeight.w400,
                          FontWeight.bold,
                          FontWeight.w400,
                          FontWeight.bold,
                          FontWeight.w400,
                          FontWeight.bold,
                          FontWeight.w400,
                        ],
                        mixed: true,
                        more_lists: true,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextGeneralClass(
                          text:
                              "The verb see also has a dynamic and a stative meaning."),
                      ListMultiple(
                        first_list: ["I", "What"],
                        second_list: ["'m seeing ", " do "],
                        third_list: [
                          "the doctor tomorrow at 9. (see='have an appointment')",
                          "you"
                        ],
                        four_list: ["", " see "],
                        five_list: [
                          "",
                          "in this picture? (see='see with your eyes')"
                        ],
                        six_list: ["", ""],
                        seven_list: ["", ""],
                        colors_bold: [
                          Colors.black,
                          Color(0xffec6825),
                          Colors.black,
                          Color(0xffec6825),
                          Colors.black,
                          Colors.black,
                          Colors.black,
                        ],
                        font_weight: [
                          FontWeight.w400,
                          FontWeight.bold,
                          FontWeight.w400,
                          FontWeight.bold,
                          FontWeight.w400,
                          FontWeight.w400,
                          FontWeight.w400,
                        ],
                        mixed: true,
                        more_lists: true,
                      ),

                      const SizedBox(
                        height: 10,
                      ),
                    ]),
              ),
              Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TitleMultiple(
                      first_phrase: 'Present Simple or Present Continuous',
                      color: const Color(0xff1ABC75),
                      font_weight: FontWeight.w500,
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
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Container(
                              width: MediaQuery.of(context).size.width - 100,
                              height: MediaQuery.of(context).size.height - 320,
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
                                route: "/b1/topic1/exercesises/topic1",
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ]),
            ]),
          ),
        )
      ]),
    );
  }
}
