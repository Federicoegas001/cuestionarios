import 'package:cuestionario/data/data_questions.dart';
import 'package:cuestionario/questions.dart';
import 'package:cuestionario/results.screen.dart';
import 'package:cuestionario/start_screen.dart';
import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  // Widget? activeScreen;

  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  List<String> selectedAnswer = [];
  var activeScreen = "start-screen";

  void switchScreen() {
    setState(() {
      activeScreen = "question-screen";
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);

    if (selectedAnswer.length == questions.length) {
      setState(() {
        //selectedAnswer = [];
        activeScreen = "results-screen";
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswer = [];
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    var screenWidget = activeScreen == "start-screen"
        ? StartScreen(switchScreen)
        : Questions(onSelectAnswer: chooseAnswer);

    screenWidget = activeScreen == 'results-screen'
        ? ResultsScreen(
            onRestart: restartQuiz,
            choosenAnswer: selectedAnswer,
          )
        : screenWidget;

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 88, 13, 218),
              Color.fromARGB(255, 108, 74, 167),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
          child: screenWidget,
        ),
      ),
    );
  }
}
