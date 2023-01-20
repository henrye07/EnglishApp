import 'package:flutter/material.dart';
import 'package:sena_app/Widgets/text_general.dart';

class DropDownExercise extends StatefulWidget {
  List<String> list_options;
  // int number_exercise;
  DropDownExercise({super.key, required this.list_options
      // , required this.number_exercise
      });

  @override
  State<DropDownExercise> createState() => _DropDownExerciseState();
}

class _DropDownExerciseState extends State<DropDownExercise> {
  String dropdownValue = "";
  // int _number_exercise = 1;

  @override
  void initState() {
    dropdownValue = widget.list_options.first;
    // _number_exercise = widget.number_exercise;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(top: 15),
            padding: EdgeInsets.symmetric(horizontal: 30),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(15),
            ),
            child: DropdownButton(
              dropdownColor: Colors.grey.shade200,
              // elevation: 16,
              style: TextStyle(color: Color(0xff1ABC75)),
              value: dropdownValue,
              items: widget.list_options
                  .map<DropdownMenuItem<String>>(
                      (String e) => DropdownMenuItem(value: e, child: Text(e)))
                  .toList(),
              onChanged: (String? value) {
                setState(() {
                  dropdownValue = value!;
                });
              },
              icon: Icon(Icons.arrow_drop_down),
              iconSize: 30,
              underline: SizedBox(),
            ),
          ),
        ],
      ),
    );
  }
}
