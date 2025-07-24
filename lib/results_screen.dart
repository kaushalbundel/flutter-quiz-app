import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:adv_basic/data/questions.dart';
import 'package:adv_basic/results_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswers,
    required this.switchScreen,
  });

  final void Function() switchScreen;

  final List<String> chosenAnswers;

  // To show the summary on screen, I need to get the data which consists of the index, the question, the correct answer and the user answer.
  // I can create a separate data class for the same purpose but for now I can create a List of Map that has all such data
  List<Map<String, Object>> getSummaryData() {
    // Question: How this list will be executed? Is this a function as it needs execution of is this a plain List of Map?
    // New Learning: Basically, we can pass either a function or a data to the widget. The data passing part is fine for the function, we just pass a function to the child widget which then computes the data.
    final List<Map<String, Object>> summaryData = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summaryData.add({
        "question_index":
            i + 1, // to populate this information on the summary widget
        "question": questions[i].questions,
        "user_answer": chosenAnswers[i],
        "correct_answer": questions[i].answers[0],
      });
    }
    return summaryData;
  }

  @override
  Widget build(BuildContext context) {
    var summaryData = getSummaryData();
    final int numTotalQuestions = questions.length;
    final int numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return Center(
      child: SizedBox(
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "You have answered $numCorrectQuestions correct questions, out of $numTotalQuestions total questions.",
              style: GoogleFonts.lato(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            ResultsSummary(summaryData),
            const SizedBox(height: 40),
            OutlinedButton(
              onPressed: switchScreen,
              child: const Text(
                "Restart Quiz",
                style: TextStyle(color: Colors.amber),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
