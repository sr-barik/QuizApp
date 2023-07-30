import 'package:flutter/material.dart';

class BgColor extends StatelessWidget {
  const BgColor(this.gettingData, {super.key});

  final void Function() gettingData;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(200, 255, 255, 255),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            "Learn Flutter the Fun Way!",
            style: TextStyle(color: Colors.white, fontSize: 22),
          ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton.icon(
            onPressed: gettingData,
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 255, 255, 255),
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}
