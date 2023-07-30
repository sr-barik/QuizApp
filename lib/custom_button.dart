import 'package:flutter/material.dart';

class OwnButton extends StatelessWidget {
  const OwnButton(this.text, this.onTap, {super.key});

  final String text;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 47, 0, 100),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 80)),
        onPressed: onTap,
        child: Text(text));
  }
}
