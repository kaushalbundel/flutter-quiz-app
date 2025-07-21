import 'package:adv_basic/questions_screen.dart';
import 'package:flutter/material.dart';
import 'package:adv_basic/my_app.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _Quiz();
  }
}

class _Quiz extends State<Quiz> {
  var _activeScreen = "start_screen";

  void switchScreen() {
    // switch screen state change method just changes the active screen string, instead of changing the widget directly in earlier iterations
    setState(() {
      _activeScreen = "questions_screen";
    });
  }

  @override
  Widget build(context) {
    // This is the main widget that drives different screen running on the app
    // The primary screens are starting screen and question/answers screen and then the results screen

    final screenWidget = _activeScreen == "start_screen"
        ? MyApp(switchScreen)
        : const QuestionsScreen();

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
