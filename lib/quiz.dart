import 'package:flutter/material.dart';
import 'package:own_app2/background.dart';
import 'package:own_app2/quest.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = BgColor(switchScreen);
    super.initState();
  }

  switchScreen() {
    setState(() {
      activeScreen = Question();
    });
  }

  @override
  Widget build(BuildContext context) {
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
