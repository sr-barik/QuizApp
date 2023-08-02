import 'package:flutter/material.dart';
import 'package:own_app2/background.dart';
import 'package:own_app2/data/Questions.dart';
import 'package:own_app2/quest.dart';
import 'package:own_app2/result.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswer = [];
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = BgColor(switchScreen);
    super.initState();
  }

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);
    if (selectedAnswer.length == questions.length) {
      setState(() {
        activeScreen = ResultScreen(selectedAnswer);
      });
    }
  }

  switchScreen() {
    setState(() {
      activeScreen = Question(chooseAnswer);
    });
  }

  @override
  Widget build(BuildContext context) {
    // if (activeScreen == ResultScreen()) {
    //   activeScreen =  ResultScreen();
    // }
    return MaterialApp(
      home: Scaffold(
          body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 68, 16, 136),
            Color.fromARGB(255, 158, 117, 212)
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: activeScreen,
      )),
    );
  }
}
