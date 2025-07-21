// creating a data class for storing question and its response

class QuizQuestion {
  const QuizQuestion(this.questions, this.answers);

  final String? questions;
  final List<String>? answers;
}
