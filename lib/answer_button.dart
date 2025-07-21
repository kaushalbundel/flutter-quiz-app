import "package:flutter/material.dart";

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    required this.onTap,
    required this.answerText,
    super.key,
  });

  final void Function() onTap;
  final String answerText;

  @override
  Widget build(context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      onPressed: onTap,
      child: Text(answerText),
    );
  }
}
