import 'package:flutter/material.dart';
import 'package:sena_app/B1/ui/widgets/dropdown_exercise.dart';
import 'package:sena_app/Widgets/text_general.dart';

class CompleteSentences extends StatelessWidget {
  final String text_1;
  final String text_2;
  final int number_exercise;
  final List<String> list_dropdown;
  CompleteSentences(
      {super.key,
      required this.list_dropdown,
      this.text_1 = "",
      this.text_2 = "",
      this.number_exercise = 1});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextGeneralClass(
          text: text_1,
        ),
        DropDownExercise(
          list_options: list_dropdown,
          number_exercise: number_exercise,
        ),
        TextGeneralClass(
          text: text_2,
        ),
      ],
    );
  }
}
