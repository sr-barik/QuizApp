import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:own_app2/data/Questions.dart';
import 'package:own_app2/sorted_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.choosenAnswer, {super.key});

  final List<String> choosenAnswer;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < choosenAnswer.length; i++) {
      summary.add({
        'Question_Index': i,
        'Question': questions[i].text,
        'Your_Answer': choosenAnswer[i],
        'Correct_Answer': questions[i].answers[0],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summary = getSummaryData();
    final x = questions.length;
    final y = summary.where((data) {
      return data['Your_Answer'] == data['Correct_Answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Your $y Answers Are Correct Out of $x',
                style: GoogleFonts.lato(color: Colors.white, fontSize: 22),
              ),
              const SizedBox(
                height: 18,
              ),
              SortedSummary(summary),
              const SizedBox(
                height: 10,
              ),
              OutlinedButton.icon(
                  onPressed: () {},
                  style:
                      OutlinedButton.styleFrom(foregroundColor: Colors.white),
                  icon: const Icon(Icons.refresh),
                  label: Text(
                    'Restart Quiz!',
                    style: GoogleFonts.lato(color: Colors.white, fontSize: 15),
                  )),
            ],
          )),
    );
  }
}
