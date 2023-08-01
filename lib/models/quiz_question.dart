class QuizQuestion {
  const QuizQuestion(this.text, this.answers);
  final String text;
  final List answers;

   //List<String>
   changingForm() {
    final formChanged = List.of(answers);
    formChanged.shuffle();
    return formChanged;
  }
}
