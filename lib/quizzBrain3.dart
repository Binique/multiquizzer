import 'question.dart';

class  QuizzBrain3 {
  int _questionNumber3 = 0;
  List<Question>_Questions3= [
    Question('Question 1', true),
    Question('Bienvenue 1', false),
    Question('Question 3', false),
    Question('Question 4', true),
  ];

  String getQuestionText3() {
    return _Questions3[_questionNumber3].listQuestions;
  }

  bool getQuestionAnswer3() {
    return _Questions3[_questionNumber3].reponses;
  }
  int getQuestionLength3() {
    return _Questions3.length;
  }
  void nextQuestion3(){
    if (_questionNumber3<_Questions3.length - 1){
      _questionNumber3++;
    }
  }
  void reset3 (){
    _questionNumber3 = 0;
  }
}