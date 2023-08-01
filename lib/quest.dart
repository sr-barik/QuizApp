import 'package:flutter/material.dart';
import 'package:own_app2/custom_button.dart';
import 'package:own_app2/data/Questions.dart';
import 'package:google_fonts/google_fonts.dart';

class Question extends StatefulWidget {
  const Question(this.onSelectAnswer, {super.key});
  final void Function(String answer) onSelectAnswer;

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  var presentQuestion = 0;
  void questionChange(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      presentQuestion++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[presentQuestion];
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
                  style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 18,
                ),
                ...currentQuestion.changingForm().map((answer) {
                  return OwnButton(answer, () {
                    questionChange(answer);
                  });
                })
                // OwnButton(currentQuestion.answers[0], () {}),
                // const SizedBox(
                //   height: 2,
                // ),
                // OwnButton(currentQuestion.answers[1], () {}),
                // const SizedBox(
                //   height: 2,
                // ),
                // OwnButton(currentQuestion.answers[2], () {}),
                // const SizedBox(
                //   height: 2,
                // ),
                // OwnButton(currentQuestion.answers[3], () {}),
                // const SizedBox(
                //   height: 2,
                // ),
              ]),
        ),
      ),
    );
  }
}
