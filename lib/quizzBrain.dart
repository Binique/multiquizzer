import 'question.dart';

class  QuizzBrain {
  int _questionNumber = 0;
  List<Question>_Questions= [
    Question('Question 1', true),
    Question('Question 2', false),
    Question('Question 3', false),
    Question('Question 4', true),
  ];

  String getQuestionText() {
    return _Questions[_questionNumber].listQuestions;
  }

  bool getQuestionAnswer() {
    return _Questions[_questionNumber].reponses;
  }
  int getQuestionLength() {
    return _Questions.length;
  }
  void nextQuestion(){
    if (_questionNumber<_Questions.length - 1){
      _questionNumber++;
    }
  }
  void reset (){
    _questionNumber = 0;
  }
}