class Question {
  const Question(this.question, this.answers);

  final String question;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers);
    // .shuffle() mutates the list in-memory 
    shuffledList.shuffle();
    return shuffledList;
  }
}