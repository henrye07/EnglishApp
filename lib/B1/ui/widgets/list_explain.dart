import 'package:flutter/material.dart';

class ListExplain extends StatelessWidget {
  final List<String> list_normal;
  final List<String> list_bold;
  final Color color;
  final Color bold_color;
  final bool mixed;

  ListExplain({
    super.key,
    this.list_normal = const [],
    this.list_bold = const [],
    this.mixed = false,
    this.color = Colors.black,
    this.bold_color = Colors.black,
  });

  ListView getBoldList() {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: list_normal.length,
      itemBuilder: (context, index) {
        return RichText(
          text: TextSpan(
            style: const TextStyle(fontSize: 16, color: Colors.black),
            children: [
              TextSpan(
                  text: '\u2022 ',
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(
                  text: list_normal[index] + ' ',
                  style: const TextStyle(fontWeight: FontWeight.w400)),
              TextSpan(
                text: list_bold[index],
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  ListView getNormalList() {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: list_normal.length,
        itemBuilder: (context, index) {
          return RichText(
            text: TextSpan(
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
              children: [
                TextSpan(
                    text: '\u2022 ',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, color: color)),
                TextSpan(
                    text: list_normal[index],
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
