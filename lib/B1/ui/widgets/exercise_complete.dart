import 'package:flutter/material.dart';
import 'package:sena_app/B1/ui/widgets/complete_sentences.dart';
import 'package:sena_app/B1/ui/widgets/title_mixed.dart';
import 'package:sena_app/Widgets/subtitle2_text.dart';
import 'package:sena_app/Widgets/text_general.dart';

List<String> list = <String>[" ", "am", "is", "are"];

class ExerciseComplete extends StatefulWidget {
  const ExerciseComplete({super.key});

  @override
  State<ExerciseComplete> createState() => _ExerciseCompleteState();
}

class _ExerciseCompleteState extends State<ExerciseComplete> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            TitleMixed(
              title: TitleClass(
                  title_normal: 'The present simple form ', title_bold: 'be'),
              color: const Color(0xff1ABC75),
            ),
            SizedBox(
              height: 20,
            ),
            Subtitle2TextClass(text: "Topic 1"),
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
                    "Fill in the gaps wiht the correct present simple forms of 'to be'",
                font_weight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: 10,
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
      ]),
    );
  }
}
