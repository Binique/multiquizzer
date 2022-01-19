import 'question.dart';

class  QuizzBrain2 {
  int _questionNumber2 = 0;
  List<Question>_Questions2= [
    Question('Question 1', true),
    Question('Bienvenue', false),
    Question('Question 3', false),
    Question('Question 4', true),
  ];

  String getQuestionText2() {
    return _Questions2[_questionNumber2].listQuestions;
  }

  bool getQuestionAnswer2() {
    return _Questions2[_questionNumber2].reponses;
  }
  int getQuestionLength2() {
    return _Questions2.length;
  }
  void nextQuestion2(){
    if (_questionNumber2<_Questions2.length - 1){
      _questionNumber2++;
    }
  }
  void reset2 (){
    _questionNumber2 = 0;
  }
}