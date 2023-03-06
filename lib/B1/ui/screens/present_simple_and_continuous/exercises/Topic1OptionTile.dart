import 'package:flutter/material.dart';
import 'package:sena_app/B1/models/questionModel.dart';
import 'package:sena_app/B1/ui/screens/present_simple_and_continuous/exercises/topic1_copy.dart';
import 'package:sena_app/assets/constants.dart' as constants;

class Topic1OptionTile extends StatefulWidget {
  final QuestionModel questionModel;

  const Topic1OptionTile({
    super.key,
    required this.questionModel,
  });

  @override
  State<Topic1OptionTile> createState() => _Topic1OptionTileState();
}

class _Topic1OptionTileState extends State<Topic1OptionTile> {
  String optionSelected = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(widget.questionModel.question),
          const SizedBox(
            height: 4,
          ),
          Topic1Exercises(
              option: "A",
              correctAnswer: widget.questionModel.option1,
              description: widget.questionModel.option1,
              optionSelected: optionSelected),
          const SizedBox(
            height: 4,
          ),
          Topic1Exercises(
              option: "B",
              correctAnswer: widget.questionModel.option2,
              description: widget.questionModel.option2,
              optionSelected: optionSelected),
          const SizedBox(
            height: 4,
          ),
          Topic1Exercises(
              option: "C",
              correctAnswer: widget.questionModel.option3,
              description: widget.questionModel.option3,
              optionSelected: optionSelected),
          const SizedBox(
            height: 4,
          ),
          Topic1Exercises(
              option: "D",
              correctAnswer: widget.questionModel.option4,
              description: widget.questionModel.option4,
              optionSelected: optionSelected),
        ],
      ),
    );
  }
}

class NoOfQuestionTile extends StatefulWidget {
  final String text;
  final int number;

  NoOfQuestionTile({required this.text, required this.number});

  @override
  _NoOfQuestionTileState createState() => _NoOfQuestionTileState();
}

class _NoOfQuestionTileState extends State<NoOfQuestionTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 3),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(14),
                    bottomLeft: Radius.circular(14)),
                color: constants.primary_color),
            child: Text(
              "${widget.number}",
              style: const TextStyle(color: Colors.white),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(14),
                  bottomRight: Radius.circular(14),
                ),
                color: Colors.black54),
            child: Text(
              widget.text,
              style: const TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
