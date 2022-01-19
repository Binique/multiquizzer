import 'package:flutter/material.dart';
import 'quizzBrain.dart';
import 'package:rflutter_alert/rflutter_alert.dart' show Alert, DialogButton;
import 'quizzBrain2.dart';
import 'quizzBrain3.dart';
QuizzBrain quizzBrain = QuizzBrain();
QuizzBrain2 quizzBrain2 = QuizzBrain2();
QuizzBrain3 quizzBrain3 = QuizzBrain3();

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Navigation Basics',
    home: MultiQuizzer(),
  ));
}

class MultiQuizzer extends StatelessWidget {
  const MultiQuizzer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade200,
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade700,
        title: Center(
            child: const Text('Quizzer')
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
               Expanded(
                 child: Padding(
                   padding: const EdgeInsets.all(15.0),
                   child: ElevatedButton(
                     style: TextButton.styleFrom(backgroundColor: Colors.indigo.shade500),
                    child: const Text('Quizz 1'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Quizzer()),
                      );
                    },
              ),
                 ),
               ),
            Expanded(
                child:
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ElevatedButton(
                style: TextButton.styleFrom(backgroundColor: Colors.indigo.shade500),
                child: const Text('Quizz 2'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Quizzer2()),
                  );
                },
              ),
            ),
            ),
            Expanded(
              child:
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: ElevatedButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.indigo.shade500),
                  child: const Text('Quizz 3'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Quizzer3()),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Quizzer extends StatefulWidget {
  const Quizzer({Key? key}) : super(key: key);
  @override
  _QuizzerState createState() => _QuizzerState();
}

class _QuizzerState extends State<Quizzer> {
  List<Icon> IconResult = [];
  int score = 0;

  checkAnswer(bool reponseUtilisateur) {
    bool bonneReponse = quizzBrain.getQuestionAnswer();
    setState(() {
      if (bonneReponse == reponseUtilisateur) {
        score++;
        IconResult.add(Icon(Icons.check, color: Colors.green));
      } else {
        IconResult.add(Icon(Icons.close, color: Colors.red));
      }
      quizzBrain.nextQuestion();
    });
    if (IconResult.length == quizzBrain.getQuestionLength()) {
        Alert(
            context: context,
            title: "Félicitations",
            desc: "Quiz terminé. Vous avez eu $score bonnes réponses.",
            buttons: [
              DialogButton(
                onPressed: () {
                  Navigator.pop(context);
                  quizzBrain.reset();
                  Navigator.pop(context);
                },
                child: Text(
                  "Fermez",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              )
            ]).show();
        score = 0;
        IconResult = [];
      }
    }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade200,
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade700,
        title: Center(
            child: const Text('Quizz 1')
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 5,
            child:
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text( quizzBrain.getQuestionText(),
                  style: TextStyle(color: Colors.white,fontSize: 25.0),textAlign: TextAlign.center,
                ),

              ),
            ),
          ),
          Expanded(
            child:
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextButton(
                onPressed: () {
                  checkAnswer(true);
                },
                style: TextButton.styleFrom(backgroundColor: Colors.green),

                child:
                const Text('Vrai',style: TextStyle(color: Colors.white,fontSize: 20),
                ),
              ),
            ),
          ),
          Expanded(
            child:
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextButton(
                onPressed: () {
                  checkAnswer(false);
                },
                style: TextButton.styleFrom(backgroundColor: Colors.red),
                child:
                const Text('Faux',style: TextStyle(color: Colors.white,fontSize: 20),
                ),

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: IconResult
              ,
            ),
          ),
        ],
      ),
    );
  }


}
class Quizzer2 extends StatefulWidget {
  const Quizzer2 ({Key? key}) : super(key: key);
  @override
  _Quizzer2State createState() => _Quizzer2State();
}

class _Quizzer2State extends State<Quizzer2> {
  List<Icon> IconResult = [];
  int score2 = 0;

  checkAnswer(bool reponseUtilisateur2) {
    bool bonneReponse2 = quizzBrain2.getQuestionAnswer2();
    setState(() {
      if (bonneReponse2 == reponseUtilisateur2) {
        score2++;
        IconResult.add(Icon(Icons.check, color: Colors.green));
      } else {
        IconResult.add(Icon(Icons.close, color: Colors.red));
      }
      quizzBrain2.nextQuestion2();
    });
    if (IconResult.length == quizzBrain2.getQuestionLength2()) {
      Alert(
          context: context,
          title: "Félicitations",
          desc: "Quiz terminé. Vous avez eu $score2 bonnes réponses.",
          buttons: [
            DialogButton(
              onPressed: () {
                Navigator.pop(context);
                quizzBrain.reset();
                Navigator.pop(context);
              },
              child: Text(
                "Fermez",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            )
          ]).show();
      score2 = 0;
      IconResult = [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade200,
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade700,
        title: Center(
            child: const Text('Quizz 2')
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 5,
            child:
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text( quizzBrain2.getQuestionText2(),
                  style: TextStyle(color: Colors.white,fontSize: 25.0),textAlign: TextAlign.center,
                ),

              ),
            ),
          ),
          Expanded(
            child:
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextButton(
                onPressed: () {
                  checkAnswer(true);
                },
                style: TextButton.styleFrom(backgroundColor: Colors.green),

                child:
                const Text('Vrai',style: TextStyle(color: Colors.white,fontSize: 20),
                ),
              ),
            ),
          ),
          Expanded(
            child:
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextButton(
                onPressed: () {
                  checkAnswer(false);
                },
                style: TextButton.styleFrom(backgroundColor: Colors.red),
                child:
                const Text('Faux',style: TextStyle(color: Colors.white,fontSize: 20),
                ),

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: IconResult
              ,
            ),
          ),
        ],
      ),
    );
  }


}

class Quizzer3 extends StatefulWidget {
  const Quizzer3 ({Key? key}) : super(key: key);
  @override
  _Quizzer3State createState() => _Quizzer3State();
}

class _Quizzer3State extends State<Quizzer3> {
  List<Icon> IconResult = [];
  int score3 = 0;

  checkAnswer(bool reponseUtilisateur3) {
    bool bonneReponse3 = quizzBrain3.getQuestionAnswer3();
    setState(() {
      if (bonneReponse3 == reponseUtilisateur3) {
        score3++;
        IconResult.add(Icon(Icons.check, color: Colors.green));
      } else {
        IconResult.add(Icon(Icons.close, color: Colors.red));
      }
      quizzBrain3.nextQuestion3();
    });
    if (IconResult.length == quizzBrain3.getQuestionLength3()) {
      Alert(
          context: context,
          title: "Félicitations",
          desc: "Quiz terminé. Vous avez eu $score3 bonnes réponses.",
          buttons: [
            DialogButton(
              onPressed: () {
                Navigator.pop(context);
                quizzBrain.reset();
                Navigator.pop(context);
              },
              child: Text(
                "Fermez",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            )
          ]).show();
      score3 = 0;
      IconResult = [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade200,
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade700,
        title: Center(
            child: const Text('Quizz 3')
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 5,
            child:
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text( quizzBrain3.getQuestionText3(),
                  style: TextStyle(color: Colors.white,fontSize: 25.0),textAlign: TextAlign.center,
                ),

              ),
            ),
          ),
          Expanded(
            child:
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextButton(
                onPressed: () {
                  checkAnswer(true);
                },
                style: TextButton.styleFrom(backgroundColor: Colors.green),

                child:
                const Text('Vrai',style: TextStyle(color: Colors.white,fontSize: 20),
                ),
              ),
            ),
          ),
          Expanded(
            child:
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextButton(
                onPressed: () {
                  checkAnswer(false);
                },
                style: TextButton.styleFrom(backgroundColor: Colors.red),
                child:
                const Text('Faux',style: TextStyle(color: Colors.white,fontSize: 20),
                ),

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: IconResult
              ,
            ),
          ),
        ],
      ),
    );
  }


}











