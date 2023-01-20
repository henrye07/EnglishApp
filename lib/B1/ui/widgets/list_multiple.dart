import 'package:flutter/material.dart';

class ListMultiple extends StatelessWidget {
  final List<String> first_list;
  final List<String> second_list;
  final List<String> third_list;
  final List<String> four_list;
  final List<String> five_list;
  final List<String> six_list;
  final List<String> seven_list;
  final List<Color> colors_bold;
  final List<FontWeight> font_weight;
  final Color color;
  final Color bold_color;
  final bool mixed;
  final bool more_lists;

  ListMultiple({
    super.key,
    this.first_list = const [],
    this.second_list = const [],
    this.third_list = const [],
    this.four_list = const [],
    this.five_list = const [],
    this.six_list = const [],
    this.seven_list = const [],
    this.colors_bold = const [],
    this.font_weight = const [],
    this.mixed = false,
    this.more_lists = false,
    this.color = Colors.black,
    this.bold_color = Colors.black,
  });

  ListView getBoldList() {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: first_list.length,
      itemBuilder: (context, index) {
        if (more_lists) {
          return RichText(
            text: TextSpan(
              text: '\u2022 ',
              style: TextStyle(fontSize: 16, color: color),
              children: [
                TextSpan(
                    text: first_list[index],
                    style: TextStyle(
                      fontWeight: font_weight[0],
                      color: colors_bold[0],
                    )),
                TextSpan(
                  text: second_list[index],
                  style: TextStyle(
                    fontWeight: font_weight[1],
                    color: colors_bold[1],
                  ),
                ),
                TextSpan(
                  text: third_list[index],
                  style: TextStyle(
                    fontWeight: font_weight[2],
                    color: colors_bold[2],
                  ),
                ),
                TextSpan(
                  text: four_list[index],
                  style: TextStyle(
                    fontWeight: font_weight[3],
                    color: colors_bold[3],
                  ),
                ),
                TextSpan(
                  text: five_list[index],
                  style: TextStyle(
                    fontWeight: font_weight[4],
                    color: colors_bold[4],
                  ),
                ),
                TextSpan(
                  text: six_list[index],
                  style: TextStyle(
                    fontWeight: font_weight[5],
                    color: colors_bold[5],
                  ),
                ),
                TextSpan(
                  text: seven_list[index],
                  style: TextStyle(
                    fontWeight: font_weight[6],
                    color: colors_bold[6],
                  ),
                ),
              ],
            ),
          );
        } else {
          return RichText(
            text: TextSpan(
              text: '\u2022 ',
              style: TextStyle(fontSize: 16, color: color),
              children: [
                TextSpan(
                    text: first_list[index],
                    style: TextStyle(
                      fontWeight: font_weight[0],
                      color: colors_bold[0],
                    )),
                TextSpan(
                  text: second_list[index],
                  style: TextStyle(
                    fontWeight: font_weight[1],
                    color: colors_bold[1],
                  ),
                ),
                TextSpan(
                  text: third_list[index],
                  style: TextStyle(
                    fontWeight: font_weight[2],
                    color: colors_bold[2],
                  ),
                ),
              ],
            ),
          );
        }
      },
    );
  }

  ListView getNormalList() {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: first_list.length,
        itemBuilder: (context, index) {
          return RichText(
            text: TextSpan(
              style: TextStyle(
                color: color,
                fontSize: 16,
              ),
              children: [
                TextSpan(
                    text: '\u2022 ',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, color: color)),
                TextSpan(
                    text: first_list[index],
                    style: TextStyle(fontWeight: FontWeight.w400)),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    if (mixed) {
      return getBoldList();
    } else {
      return getNormalList();
    }
  }
}
