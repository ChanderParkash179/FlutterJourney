class QuizModel {
  const QuizModel(this.text, this.answers);

  final String text;
  final List<String> answers;

  // get shuffle list
  List<String> get shuffledList {
    final shuffleList = List.of(answers);
    shuffleList.shuffle();
    return shuffleList;
  }
}
