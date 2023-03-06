import 'package:flutter/material.dart';

class ResultsTopic1 extends StatefulWidget {
  final int correct, incorrect, total;
  const ResultsTopic1(
      {super.key,
      required this.correct,
      required this.incorrect,
      required this.total});

  @override
  State<ResultsTopic1> createState() => _ResultsTopic1State();
}

class _ResultsTopic1State extends State<ResultsTopic1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "${widget.correct}/${widget.total}",
            style: const TextStyle(fontSize: 25),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            "You answered ${widget.correct} answers correctly "
            "and ${widget.incorrect} answers incorrectly",
            textAlign: TextAlign.center,
          )
        ],
      )),
    ));
  }
}
