class QuizModel {
  const QuizModel(this.text, this.answers);

  final String text;
  final List<String> answers;

  // get shuffle list
  List<String> getShuffleList() {
    final shuffleList = List.of(answers);
    shuffleList.shuffle();
    return shuffleList;
  }
}
