// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:personality_test/models/PersonalityType.dart';
import 'package:personality_test/models/Question.dart';

class QuestionScreen extends StatelessWidget {
  final Question question;
  final void Function(PersonalityType PersonalityType) onAnswerSelected;

  QuestionScreen({
    required this.question,
    required this.onAnswerSelected,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 24, 50, 95),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              question.text,
              style: TextStyle(fontSize: 24, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ...question.answers.map((answer) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: ElevatedButton(
                  onPressed: () => onAnswerSelected(answer.personality),
                  style: ElevatedButton.styleFrom(),
                  child: Text(answer.text, textAlign: TextAlign.center),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
