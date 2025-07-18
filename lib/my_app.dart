import 'package:flutter/material.dart';

// As the button is click the questions will change; this change will have to be
// incorporated in some kind of state. Hence, the state is captured in statefulwidget
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() {
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 2, 50, 90),
          ),
          child: Center(
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
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 2, 50, 90),
                    side: const BorderSide(color: Colors.white),
                  ),
                  child: const Text(
                    "Start Quiz",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
