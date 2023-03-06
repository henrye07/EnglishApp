import 'package:flutter/material.dart';
import 'package:sena_app/B1/ui/widgets/dropdown_exercise.dart';
import 'package:sena_app/Widgets/text_general.dart';
import 'package:sena_app/assets/constants.dart' as constants;

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
      this.number_exercise = 0});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: constants.primary_color,
            ),
            child: Padding(
              padding: EdgeInsets.all(5),
              child: TextGeneralClass(
                text: "$number_exercise",
                color: Colors.white,
                text_size: 20,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Flexible(
              child: TextGeneralClass(
            text: text_1 + " ______ " + text_2,
          )),
        ],
      ),
      Padding(
        padding: EdgeInsets.only(left: 35),
        child: DropDownExercise(
          list_options: list_dropdown,
          index: number_exercise,
        ),
      ),
    ]
        // TextGeneralClass(
        //   text: text_1,
        // ),
        // TextGeneralClass(
        //   text: "______",
        // ),
        // TextGeneralClass(
        //   text: text_2,
        // ),

        );
  }
}
