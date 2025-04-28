// ignore_for_file: file_names

import 'package:personality_test/models/Answers.dart';

class Question {
  final String text;
  final List<Answers> answers;
  Question({required this.text, required this.answers});
}
