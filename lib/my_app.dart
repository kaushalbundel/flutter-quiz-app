import 'package:flutter/material.dart';

// As the button is click the questions will change; this change will have to be
// incorporated in some kind of state. Hence, the state is captured in statefulwidget

// changed the widget to a statelesswidget. The reason was that the starting page(which this page represented) does not has any state based elements. What this means is
// that the usage of Statefulwidget in this context was unnecessary.
class MyApp extends StatelessWidget {
  const MyApp(this.screenChange, {super.key});

  final void Function() screenChange;

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
            onPressed:
                screenChange, // LLM hallucinated at this point as the function added here is excluded from the call back (){} and just used as it is.
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
