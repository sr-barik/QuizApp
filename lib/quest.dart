import 'package:flutter/material.dart';
import 'package:own_app2/custom_button.dart';
import 'package:own_app2/data/Questions.dart';

class Question extends StatefulWidget {
  const Question({super.key});

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];
    return SizedBox(
      width: double.infinity,
      child: Center(
        child: Container(
          margin: const EdgeInsets.all(15),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  currentQuestion.text,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 23, color: Colors.white),
                ),
                const SizedBox(
                  height: 18,
                ),
                OwnButton(currentQuestion.answers[0], () {}),
                const SizedBox(
                  height: 2,
                ),
                OwnButton(currentQuestion.answers[1], () {}),
                const SizedBox(
                  height: 2,
                ),
                OwnButton(currentQuestion.answers[2], () {}),
                const SizedBox(
                  height: 2,
                ),
                OwnButton(currentQuestion.answers[3], () {}),
                const SizedBox(
                  height: 2,
                ),
              ]),
        ),
      ),
    );
  }
}
