import 'package:adv_basic/questions_screen.dart';
import 'package:flutter/material.dart';
import 'package:adv_basic/my_app.dart';
import 'package:adv_basic/data/questions.dart';
import 'package:adv_basic/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _Quiz();
  }
}

class _Quiz extends State<Quiz> {
  List<String> selectedAnswers = [];

  var _activeScreen = "start_screen";

  void switchScreen() {
    // switch screen state change method just changes the active screen string, instead of changing the widget directly in earlier iterations
    setState(() {
      _activeScreen = "questions_screen";
    });
  }

  void addAnswers(String answers) {
    selectedAnswers.add(answers);
    setState(() {
      if (selectedAnswers.length == questions.length) {
        selectedAnswers = [];
        _activeScreen = "results-screen";
      }
    });
  }

  @override
  Widget build(context) {
    // This is the main widget that drives different screen running on the app
    // The primary screens are starting screen and question/answers screen and then the results screen

    var screenWidget = _activeScreen == "start_screen"
        ? MyApp(switchScreen)
        : QuestionsScreen(onSelectedAnswers: addAnswers);

    if (_activeScreen == "results-screen") {
      screenWidget = ResultsScreen(chosenAnswers: selectedAnswers);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 2, 50, 90),
          ),
          // This is displaying the starting screen
          child: screenWidget,
        ),
      ),
    );
  }
}
