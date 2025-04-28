// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:personality_test/models/PersonalityType.dart';

class ResultScreen extends StatelessWidget {
  final PersonalityType resultpersonality;
  final VoidCallback onRestart;

  ResultScreen({
    required this.resultpersonality,
    required this.onRestart,
    super.key,
  });

  final Map<PersonalityType, String> messages = {
    PersonalityType.feeler:
        'You are a Feeler \n💖\n Empathetic, warm, and guided by emotion.',
    PersonalityType.thinker:
        'You are a Thinker \n🧠\n Logical, curious, and focused on ideas.',
    PersonalityType.planner:
        'You are a Planner \n🗓️\n Organized, strategic, and goal-oriented.',
    PersonalityType.adventurer:
        'You are an Adventurer \n🗺️\n Spontaneous, bold, and always exploring.',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 24, 50, 95),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              messages[resultpersonality] ?? '',
              style: TextStyle(
                fontSize: 34,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.white,
                side: const BorderSide(color: Colors.white),
              ),
              onPressed: onRestart,
              label: const Text(
                'Restart Test',
                style: TextStyle(color: Color.fromARGB(255, 30, 33, 53)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
