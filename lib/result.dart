import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Result Screen'),
              const SizedBox(
                height: 5,
              ),
              const Text('probably Answer'),
              TextButton(onPressed: () {}, child: const Text('Restart'))
            ],
          )),
    );
  }
}
