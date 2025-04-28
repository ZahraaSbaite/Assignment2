import 'package:flutter/material.dart';
import 'package:personality_test/models/PersonalityType.dart';
import 'package:personality_test/screens/QuestionsScreen.dart';
import 'package:personality_test/screens/ResultScreen.dart';
import 'package:personality_test/screens/StartScreen.dart';
import 'package:personality_test/data/QuestionsList.dart';

void main() {
  runApp(const PersonalityTestApp());
}

class PersonalityTestApp extends StatefulWidget {
  const PersonalityTestApp({super.key});

  @override
  State<PersonalityTestApp> createState() => _PersonalityTestAppState();
}

class _PersonalityTestAppState extends State<PersonalityTestApp> {
  String activeScreen = 'start-screen';
  Map<PersonalityType, int> scores = {
    PersonalityType.thinker: 0,
    PersonalityType.feeler: 0,
    PersonalityType.planner: 0,
    PersonalityType.adventurer: 0,
  };

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void selectAnswer(PersonalityType personality) {
    scores[personality] = scores[personality]! + 1;

    if (_currentQuestionIndex < questions.length - 1) {
      setState(() {
        _currentQuestionIndex++;
      });
    } else {
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      scores = {
        PersonalityType.thinker: 0,
        PersonalityType.feeler: 0,
        PersonalityType.planner: 0,
        PersonalityType.adventurer: 0,
      };
      _currentQuestionIndex = 0;
      activeScreen = 'start-screen';
    });
  }

  int _currentQuestionIndex = 0;

  PersonalityType getResultPersonality() {
    return scores.entries.reduce((a, b) => a.value > b.value ? a : b).key;
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'question-screen') {
      screenWidget = QuestionScreen(
        question: questions[_currentQuestionIndex],
        onAnswerSelected: selectAnswer,
      );
    } else if (activeScreen == 'result-screen') {
      screenWidget = ResultScreen(
        resultpersonality: getResultPersonality(),
        onRestart: restartQuiz,
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(decoration: const BoxDecoration(), child: screenWidget),
      ),
    );
  }
}
