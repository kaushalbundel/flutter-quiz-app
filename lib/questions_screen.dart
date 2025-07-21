import 'package:flutter/material.dart';
import 'package:adv_basic/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "The question text is ...",
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 40),
          AnswerButton(onTap: () {}, answerText: "Answer Text"),
          AnswerButton(onTap: () {}, answerText: "Answer Text"),
          AnswerButton(onTap: () {}, answerText: "Answer Text"),
        ],
      ),
    );
  }
}
