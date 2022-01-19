import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);

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
                    child: const Text('HTML'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SecondRoute()),
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
                child: const Text('CSS'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ThirdRoute()),
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
                  child: const Text('PHP'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ThirdRoute()),
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

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('La Réunion'
        ),
      ),

    );
  }
}
class ThirdRoute extends StatelessWidget {
  const ThirdRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quizzer'),
      ),
      body:Container(),
    );
  }
}

