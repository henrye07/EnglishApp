import 'package:flutter/material.dart';
import 'package:sena_app/Widgets/text_general.dart';
import 'package:sena_app/assets/constants.dart' as constants;

class ButtonExercise extends StatelessWidget {
  String title;
  String subtitle;
  String route;
  ButtonExercise(
      {super.key, this.title = "", this.subtitle = "", this.route = ""});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(route);
        },
        child: Container(
          margin: const EdgeInsets.only(
            // top: 10,
            right: 40,
            left: 40,
            bottom: 12,
          ),
          // height: 30,
          alignment: const Alignment(-0.8, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  TextGeneralClass(text: title),
                  const SizedBox(
                    height: 5,
                  ),
                  TextGeneralClass(
                    text: subtitle,
                    color: Colors.grey.shade500,
                    text_size: 14,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              ),
              const Icon(
                Icons.arrow_forward_rounded,
                size: 20,
                color: constants.primary_color,
              )
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black26,
                blurRadius: 4,
                offset: Offset(0, 1),
              )
            ],
          ),
          // alignment: Alignment(-0.9, 0.0),
        ));
  }
}
