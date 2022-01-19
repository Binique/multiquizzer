import 'question.dart';

class  QuizzBrain {
  int _questionNumber = 0;
  List<Question>_Questions= [
    Question('Le piton des neiges est un volcan de la Réunion ?', true),
    Question('Flutter permet de faire des applications web également ?', true),
    Question('Php est le language utilisé par Flutter ?', false),
    Question('Le piton de la fournaise est un volcan de la Réunion ?', true),
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