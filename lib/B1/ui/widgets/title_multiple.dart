import 'package:flutter/material.dart';

class TitleMultiple extends StatelessWidget {
  final String first_phrase;
  final String second_phrase;
  final String third_phrase;
  final List<Color> colors_bold;
  final List<FontWeight> fonts_weight;
  final Color color;
  final double text_size;
  final FontWeight font_weight;
  final bool mixed;

  TitleMultiple({
    super.key,
    this.first_phrase = "",
    this.second_phrase = "",
    this.third_phrase = "",
    this.colors_bold = const [],
    this.fonts_weight = const [],
    this.color = Colors.black,
    this.font_weight = FontWeight.w400,
    this.text_size = 32,
    this.mixed = false,
  });

  RichText titleMixture() {
    return RichText(
      text: TextSpan(
        text: first_phrase,
        style: TextStyle(
            color: colors_bold[0],
            fontSize: text_size,
            fontWeight: fonts_weight[0]),
        children: [
          TextSpan(
              text: second_phrase,
              style: TextStyle(
                fontWeight: fonts_weight[1],
                color: colors_bold[1],
              )),
          TextSpan(
              text: third_phrase,
              style: TextStyle(
                fontWeight: fonts_weight[2],
                color: colors_bold[2],
              )),
        ],
      ),
    );
  }

  RichText titleNormal() {
    return RichText(
      text: TextSpan(
        style: TextStyle(
          color: color,
          fontSize: text_size,
        ),
        children: [
          TextSpan(
            text: first_phrase,
            style: TextStyle(
              fontWeight: font_weight,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (mixed) {
      return titleMixture();
    } else {
      return titleNormal();
    }
  }
}
