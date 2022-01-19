import 'question.dart';

class  QuizzBrain3 {
  int _questionNumber3 = 0;
  List<Question>_Questions3= [
    Question("Un éthylabélophile collectionne les étiquettes de bouteilles d'alcool ?", true),
    Question("Elvis Presley interprète l'un de ses plus grands succès Love Me Tender dans le film de même nom ?", true),
    Question("La constellation d'Orion est aussi appelée Le Chasseur ?", true),
    Question('Calamity Jane est uniquement un personnage de fiction ?', true),
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