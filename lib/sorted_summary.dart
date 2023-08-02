import "package:flutter/material.dart";

class SortedSummary extends StatelessWidget {
  const SortedSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((output) {
            return Row(
              children: [
                Text(
                  ((output['Question_Index'] as int) + 1).toString(),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        output['Question'] as String,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(output['Your_Answer'] as String,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 249, 38, 253))),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(output['Correct_Answer'] as String,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 81, 255, 0))),
                      const SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
