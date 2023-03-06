class QuestionModel {
  String question;
  String option1;
  String option2;
  String option3;
  String option4;
  String correctOption;
  bool answered;
  String explantionAnswer;

  QuestionModel(
      {this.answered = false,
      this.correctOption = "",
      this.option1 = "",
      this.option2 = "",
      this.option3 = "",
      this.option4 = "",
      this.question = "",
      this.explantionAnswer = ""});
}
