import 'package:flutter/material.dart';
import 'package:sena_app/B1/database/data_json.dart';
import 'package:sena_app/B1/models/data_topic1.dart';
import 'package:sena_app/B1/models/questionModel.dart';
import 'package:sena_app/B1/ui/screens/present_simple_and_continuous/exercises/Topic1OptionTile.dart';
import 'package:sena_app/B1/ui/screens/present_simple_and_continuous/exercises/results.dart';
import 'package:sena_app/B1/ui/screens/present_simple_and_continuous/exercises/topic1_copy.dart';
import 'package:sena_app/B1/ui/widgets/title_multiple.dart';
import 'package:sena_app/assets/constants.dart' as constants;

int _correct = 0;
int _incorrect = 0;
int _notAttempted = 0;
int total = 0;

Stream _headerController = const Stream.empty();

class Topic1Exercise extends StatefulWidget {
  Topic1Exercise({Key? key}) : super(key: key);

  @override
  State<Topic1Exercise> createState() => _Topic1ExerciseState();
}

class _Topic1ExerciseState extends State<Topic1Exercise>
    with AutomaticKeepAliveClientMixin<Topic1Exercise> {
  DataTopic1Model dataTopic1 = DataTopic1Model();
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    DataTopic1().getData().then((value) {
      setState(() {
        dataTopic1.answers = value["Answers"];
        dataTopic1.correctAnswer = value["CorrectAnswer"];
        dataTopic1.questions = value["Questions"];
        dataTopic1.explanationAnswers = value["ExplanationForExercises"];
        isLoading = false;
        _notAttempted = dataTopic1.questions.length;
        _correct = 0;
        _incorrect = 0;
        total = dataTopic1.questions.length;
      });
    });
    if (_headerController.isEmpty == true) {
      _headerController =
          Stream<List<int>>.periodic(Duration(milliseconds: 100), (x) {
        print("this is x $x");
        return [_correct, _incorrect];
      });
    }
  }

  QuestionModel getQuestionModelFromData(DataTopic1Model data, int index) {
    QuestionModel questionModel = QuestionModel();

    questionModel.question = data.questions[index];

    /// shuffling the options
    List<String> options = [
      data.answers[index][0],
      data.answers[index][1],
      data.answers[index][2],
      data.answers[index][3]
    ];
    options.shuffle();

    questionModel.option1 = options[0];
    questionModel.option2 = options[1];
    questionModel.option3 = options[2];
    questionModel.option4 = options[3];
    questionModel.correctOption = data.correctAnswer[index];
    questionModel.answered = false;
    questionModel.explantionAnswer = data.explanationAnswers[index];

    // print(questionModel.correctOption.toLowerCase());
    return questionModel;
  }

  @override
  void dispose() {
    super.dispose();
    // _headerController = const Stream.empty();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
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
                      icon: const Icon(Icons.keyboard_arrow_left),
                      color: Colors.blue.shade400,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    )),
                const SizedBox(
                  width: 10,
                ),
                Flexible(
                  child: TitleMultiple(
                    mixed: true,
                    first_phrase: "The present simple form",
                    second_phrase: " be",
                    third_phrase: "",
                    colors_bold: [
                      constants.primary_color,
                      constants.primary_color,
                      constants.primary_color
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
            const SizedBox(
              height: 20,
            ),
            Container(
              child: isLoading
                  ? Container(child: Center(child: CircularProgressIndicator()))
                  : Container(
                      height: MediaQuery.of(context).size.height,
                      child: Column(
                        children: [
                          InfoHeader(
                            length: dataTopic1.questions.length,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Expanded(
                              child: ListView.builder(
                                  itemCount: dataTopic1.questions.length,
                                  shrinkWrap: true,
                                  physics: const ClampingScrollPhysics(),
                                  addAutomaticKeepAlives: true,
                                  itemBuilder: (context, int index) {
                                    return Topic1PlayTile(
                                      questionModel: getQuestionModelFromData(
                                          dataTopic1, index),
                                      index: index,
                                    );
                                  })),
                          const SizedBox(
                            height: 150,
                          ),
                        ],
                      )),
            )
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.check,
        ),
        backgroundColor: constants.primary_color,
        splashColor: constants.secondary_color,
        onPressed: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => ResultsTopic1(
                      correct: _correct,
                      incorrect: _incorrect,
                      total: dataTopic1.questions.length)));
        },
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class Topic1PlayTile extends StatefulWidget {
  final QuestionModel questionModel;
  final int index;

  Topic1PlayTile({Key? key, required this.questionModel, required this.index})
      : super(key: key);

  @override
  State<Topic1PlayTile> createState() => _Topic1PlayTileState();
}

class _Topic1PlayTileState extends State<Topic1PlayTile>
    with AutomaticKeepAliveClientMixin {
  String optionSelected = "";
  bool? correctAnswerSelected;
  @override
  void initState() {
    super.initState();
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Q${widget.index + 1} - ${widget.questionModel.question} ",
              style:
                  TextStyle(fontSize: 18, color: Colors.black.withOpacity(0.8)),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          GestureDetector(
            onTap: () {
              if (!widget.questionModel.answered) {
                ///correct
                if (widget.questionModel.option1 ==
                    widget.questionModel.correctOption) {
                  setState(() {
                    optionSelected = widget.questionModel.option1;
                    widget.questionModel.answered = true;
                    correctAnswerSelected = true;
                    _correct = _correct + 1;
                    _notAttempted = _notAttempted + 1;
                  });
                } else {
                  setState(() {
                    optionSelected = widget.questionModel.option1;
                    widget.questionModel.answered = true;
                    correctAnswerSelected = false;
                    _incorrect = _incorrect + 1;
                    _notAttempted = _notAttempted - 1;
                  });
                }
              }
            },
            child: Topic1Exercises(
              option: "A",
              description: widget.questionModel.option1,
              correctAnswer: widget.questionModel.correctOption,
              optionSelected: optionSelected,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          GestureDetector(
            onTap: () {
              if (!widget.questionModel.answered) {
                ///correct
                if (widget.questionModel.option2 ==
                    widget.questionModel.correctOption) {
                  setState(() {
                    optionSelected = widget.questionModel.option2;
                    widget.questionModel.answered = true;
                    correctAnswerSelected = true;
                    _correct = _correct + 1;
                    _notAttempted = _notAttempted + 1;
                  });
                } else {
                  setState(() {
                    optionSelected = widget.questionModel.option2;
                    widget.questionModel.answered = true;
                    correctAnswerSelected = false;
                    _incorrect = _incorrect + 1;
                    _notAttempted = _notAttempted - 1;
                  });
                }
              }
            },
            child: Topic1Exercises(
              option: "B",
              description: widget.questionModel.option2,
              correctAnswer: widget.questionModel.correctOption,
              optionSelected: optionSelected,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          GestureDetector(
            onTap: () {
              if (!widget.questionModel.answered) {
                ///correct
                if (widget.questionModel.option3 ==
                    widget.questionModel.correctOption) {
                  setState(() {
                    optionSelected = widget.questionModel.option3;
                    widget.questionModel.answered = true;
                    correctAnswerSelected = true;
                    _correct = _correct + 1;
                    _notAttempted = _notAttempted + 1;
                  });
                } else {
                  setState(() {
                    optionSelected = widget.questionModel.option3;
                    widget.questionModel.answered = true;
                    correctAnswerSelected = false;
                    _incorrect = _incorrect + 1;
                    _notAttempted = _notAttempted - 1;
                  });
                }
              }
            },
            child: Topic1Exercises(
              option: "C",
              description: widget.questionModel.option3,
              correctAnswer: widget.questionModel.correctOption,
              optionSelected: optionSelected,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          GestureDetector(
            onTap: () {
              if (!widget.questionModel.answered) {
                ///correct
                if (widget.questionModel.option4 ==
                    widget.questionModel.correctOption) {
                  setState(() {
                    optionSelected = widget.questionModel.option4;
                    widget.questionModel.answered = true;
                    correctAnswerSelected = true;
                    _correct = _correct + 1;
                    _notAttempted = _notAttempted + 1;
                  });
                } else {
                  setState(() {
                    optionSelected = widget.questionModel.option4;
                    widget.questionModel.answered = true;
                    correctAnswerSelected = false;
                    _incorrect = _incorrect + 1;
                    _notAttempted = _notAttempted - 1;
                  });
                }
              }
            },
            child: Topic1Exercises(
              option: "D",
              description: widget.questionModel.option4,
              correctAnswer: widget.questionModel.correctOption,
              optionSelected: optionSelected,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          correctAnswerSelected != null
              ? correctAnswerSelected == true
                  ? Container(
                      height: 80,
                      // width: MediaQuery.of(context).size.width / 4,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.green.withOpacity(0.8), width: 1.4),
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromARGB(255, 249, 247, 247),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 5,
                                color: const Color.fromRGBO(0, 0, 0, 0.4),
                                offset: Offset(0, 1))
                          ]),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                                child: Text(
                              widget.questionModel.explantionAnswer,
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                            ))
                          ]),
                    )
                  : Container(
                      height: 100,
                      // width: MediaQuery.of(context).size.width / 4,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.red.withOpacity(0.8), width: 1.4),
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromARGB(255, 249, 247, 247),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 5,
                                color: const Color.fromRGBO(0, 0, 0, 0.4),
                                offset: Offset(0, 1))
                          ]),

                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                                "Correct Answer: ${widget.questionModel.correctOption}",
                                style: const TextStyle(
                                  color: Colors.red,
                                )),
                            SizedBox(
                              height: 10,
                            ),
                            Expanded(
                                child: Text(
                              widget.questionModel.explantionAnswer,
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                            ))
                          ]),
                    )
              : Container(),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

class InfoHeader extends StatefulWidget {
  final int length;

  InfoHeader({required this.length});

  @override
  State<InfoHeader> createState() => _InfoHeaderState();
}

class _InfoHeaderState extends State<InfoHeader> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: _headerController,
        builder: (context, AsyncSnapshot snapshot) {
          return snapshot.hasData
              ? snapshot.connectionState == ConnectionState.waiting
                  ? const CircularProgressIndicator()
                  : Container(
                      height: 40,
                      margin: const EdgeInsets.only(left: 14),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        children: <Widget>[
                          NoOfQuestionTile(
                            text: "Total",
                            number: widget.length,
                          ),
                          NoOfQuestionTile(
                            text: "Correct",
                            number: _correct,
                          ),
                          NoOfQuestionTile(
                            text: "Incorrect",
                            number: _incorrect,
                          ),
                          NoOfQuestionTile(
                            text: "NotAttempted",
                            number: _notAttempted,
                          ),
                        ],
                      ),
                    )
              : Container();
        });
  }
}
