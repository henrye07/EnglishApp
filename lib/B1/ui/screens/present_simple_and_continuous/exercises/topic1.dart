import 'package:flutter/material.dart';
import 'package:sena_app/B1/ui/widgets/complete_sentences.dart';
import 'package:sena_app/B1/ui/widgets/title_mixed.dart';
import 'package:sena_app/B1/ui/widgets/title_multiple.dart';
import 'package:sena_app/Widgets/subtitle2_text.dart';
import 'package:sena_app/Widgets/text_general.dart';

List<String> list = <String>[" ", "am", "is", "are"];

class Topic1ExerciseComplete extends StatefulWidget {
  const Topic1ExerciseComplete({super.key});

  @override
  State<Topic1ExerciseComplete> createState() => _Topic1ExerciseCompleteState();
}

class _Topic1ExerciseCompleteState extends State<Topic1ExerciseComplete> {
  String dropdownValue = list.first;
  final _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: 40,
                              width: 40,
                              child: IconButton(
                                iconSize: 40,
                                icon: Icon(Icons.keyboard_arrow_left),
                                color: Colors.blue.shade400,
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          Flexible(
                            child: TitleMultiple(
                              mixed: true,
                              first_phrase: "The present simple form",
                              second_phrase: " be",
                              third_phrase: "",
                              colors_bold: [
                                Color(0xff1ABC75),
                                Color(0xff1ABC75),
                                Color(0xff1ABC75)
                              ],
                              fonts_weight: [
                                FontWeight.w400,
                                FontWeight.bold,
                                FontWeight.w400
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TitleMultiple(
                        first_phrase: "Topic 1",
                        color: Colors.black,
                        font_weight: FontWeight.w500,
                        text_size: 22,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(219, 234, 234, 234),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 5,
                                  color: Color.fromRGBO(0, 0, 0, 0.4),
                                  offset: Offset(0, 1))
                            ]),
                        child: TextGeneralClass(
                          text:
                              "Choose the present simple or present continuous to complete the sentences below.",
                          font_weight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      CompleteSentences(
                        text_1:
                            "Where do you think the people is looking for find",
                        text_2: "answer?",
                        number_exercise: 1,
                        list_dropdown: ["", "are", "am", "is"],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CompleteSentences(
                        text_1:
                            "Where do you think the people is looking for find",
                        text_2: "answer?",
                        number_exercise: 2,
                        list_dropdown: ["", "are", "am", "is"],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CompleteSentences(
                        text_1:
                            "Where do you think the people is looking for find",
                        text_2: "answer?",
                        number_exercise: 2,
                        list_dropdown: ["", "are", "am", "is"],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CompleteSentences(
                        text_1:
                            "Where do you think the people is looking for find",
                        text_2: "answer?",
                        number_exercise: 2,
                        list_dropdown: ["", "are", "am", "is"],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CompleteSentences(
                        text_1:
                            "Where do you think the people is looking for find",
                        text_2: "answer?",
                        number_exercise: 2,
                        list_dropdown: ["", "are", "am", "is"],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CompleteSentences(
                        text_1:
                            "Where do you think the people is looking for find",
                        text_2: "answer?",
                        number_exercise: 2,
                        list_dropdown: ["", "are", "am", "is"],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CompleteSentences(
                        text_1:
                            "Where do you think the people is looking for find",
                        text_2: "answer?",
                        number_exercise: 2,
                        list_dropdown: ["", "are", "am", "is"],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Validate returns true if the form is valid, or false otherwise.
                          // if (_formKey.currentState!.validate()) {
                          //   // If the form is valid, display a snackbar. In the real world,
                          //   // you'd often call a server or save the information in a database.
                          //   ScaffoldMessenger.of(context).showSnackBar(
                          //     const SnackBar(content: Text('Processing Data')),
                          //   );
                          // }
                        },
                        child: const Text('Submit'),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ]),
              ),
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              //   child: SizedBox(
              //     height: 200,
              //     child: Column(
              //         // mainAxisAlignment: MainAxisAlignment.start,
              //         crossAxisAlignment: CrossAxisAlignment.center,
              //         children: [
              //           const SizedBox(
              //             height: 30,
              //           ),
              //         ]),
              //   ),
              // ),
              // ]),
            )));
  }
}
