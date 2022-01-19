import 'question.dart';

class  QuizzBrain2 {
  int _questionNumber2 = 0;
  List<Question>_Questions2= [
    Question('La chanteuse Céline Dion est née dans la ville de Charlemagne au Québec ?', true),
    Question("La dengue est une maladie transmise par la piqûre d'une tique ?", false),
    Question("L'est de l'Espagne est bordé par l'océan Atlantique ?", false),
    Question("Le premier être vivant à aller dans l'Espace est la chienne Laïka, envoyée par les Américains ?", false),
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