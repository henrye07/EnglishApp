import 'package:flutter/material.dart';

class Topic1Exercises extends StatefulWidget {
  final String option, description, correctAnswer, optionSelected;

  const Topic1Exercises(
      {super.key,
      @required this.option = "",
      @required this.correctAnswer = "",
      @required this.description = "",
      @required this.optionSelected = ""});

  @override
  State<Topic1Exercises> createState() => _Topic1ExercisesState();
}

class _Topic1ExercisesState extends State<Topic1Exercises> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        height: 28,
        width: MediaQuery.of(context).size.width / 4,
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: 15),
        decoration: BoxDecoration(
            border: Border.all(
                color: widget.description == widget.optionSelected
                    ? (widget.optionSelected == widget.correctAnswer
                        ? Colors.green.withOpacity(0.8)
                        : Colors.red.withOpacity(0.8))
                    : Colors.grey,
                width: 1.4),
            borderRadius: BorderRadius.circular(20)),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                widget.option,
                style: TextStyle(
                    color: widget.optionSelected == widget.description
                        ? (widget.correctAnswer == widget.optionSelected
                            ? Colors.green.withOpacity(0.8)
                            : Colors.red.withOpacity(0.8))
                        : Colors.grey),
              ),
              Text(
                widget.description,
                style: TextStyle(
                    color: widget.optionSelected == widget.description
                        ? (widget.correctAnswer == widget.optionSelected
                            ? Colors.green.withOpacity(0.8)
                            : Colors.red.withOpacity(0.8))
                        : Colors.grey),
              )
            ]),
      ),
    );
  }
}
