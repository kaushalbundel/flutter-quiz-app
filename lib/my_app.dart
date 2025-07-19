import 'package:flutter/material.dart';

// As the button is click the questions will change; this change will have to be
// incorporated in some kind of state. Hence, the state is captured in statefulwidget
class MyApp extends StatefulWidget {
  const MyApp(this.screenChange, {super.key});

  final void Function() screenChange;

  @override
  State<MyApp> createState() {
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/quiz-logo.png", width: 300),
          const SizedBox(height: 40),
          const Text(
            "Learn Flutter the fun way!",
            style: TextStyle(
              color: Color.fromARGB(255, 240, 235, 235),
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 40),
          ElevatedButton.icon(
            onPressed: () {
              widget.screenChange;
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 2, 50, 90),
              side: const BorderSide(color: Colors.white),
            ),
            icon: const Icon(
              Icons.arrow_right_alt_rounded,
              color: Colors.white,
            ),
            label: const Text(
              "Start Quiz",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
