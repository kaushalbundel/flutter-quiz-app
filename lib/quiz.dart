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
  Widget? activeScreen;

  @override
  void initState() {
    super.initState();
    activeScreen = MyApp(switchScreen);
  }

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(context) {
    // This is the main widget that drives different screen running on the app
    // The primary screens are starting screen and question/answers screen and then the results screen
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 2, 50, 90),
          ),
          // This is displaying the starting screen
          child: activeScreen,
        ),
      ),
    );
  }
}
