// ignore_for_file: file_names

import 'package:personality_test/models/Answers.dart';
import 'package:personality_test/models/Question.dart';
import 'package:personality_test/models/PersonalityType.dart';

final List<Question> questions = [
  Question(
    text: 'How do you approach a difficult decision?',
    answers: [
      Answers(
        text: 'Analyze all options logically',
        personality: PersonalityType.thinker,
      ),
      Answers(
        text: 'Go with what feels right emotionally',
        personality: PersonalityType.feeler,
      ),
      Answers(
        text: 'Make a checklist and plan it out',
        personality: PersonalityType.planner,
      ),
      Answers(
        text: 'Take a leap and deal with results later',
        personality: PersonalityType.adventurer,
      ),
    ],
  ),

  Question(
    text: 'What excites you the most?',
    answers: [
      Answers(
        text: 'Solving complex problems',
        personality: PersonalityType.thinker,
      ),
      Answers(
        text: 'Connecting deeply with others',
        personality: PersonalityType.feeler,
      ),
      Answers(
        text: 'Creating a clear path to your goals',
        personality: PersonalityType.planner,
      ),
      Answers(
        text: 'Exploring something new',
        personality: PersonalityType.adventurer,
      ),
    ],
  ),
  Question(
    text: ' Which best describes your work style?',
    answers: [
      Answers(
        text: 'Detail-focused and logical',
        personality: PersonalityType.thinker,
      ),
      Answers(
        text: 'People-centered and intuitive',
        personality: PersonalityType.feeler,
      ),
      Answers(
        text: 'Organized and systematic',
        personality: PersonalityType.planner,
      ),
      Answers(
        text: 'Flexible and spontaneous',
        personality: PersonalityType.adventurer,
      ),
    ],
  ),
  Question(
    text: 'How do you recharge after a long day?',
    answers: [
      Answers(
        text: 'Quiet reflection or reading',
        personality: PersonalityType.thinker,
      ),
      Answers(
        text: 'Spending time with close friends',
        personality: PersonalityType.feeler,
      ),
      Answers(
        text: "Planning tomorrow's tasks",
        personality: PersonalityType.planner,
      ),
      Answers(
        text: 'Doing something active or exciting',
        personality: PersonalityType.adventurer,
      ),
    ],
  ),
  Question(
    text: "You're most comfortable when...",
    answers: [
      Answers(
        text: 'Things make logical sense',
        personality: PersonalityType.thinker,
      ),
      Answers(
        text: 'Everyone is getting along',
        personality: PersonalityType.feeler,
      ),
      Answers(
        text: "There's a clear structure",
        personality: PersonalityType.planner,
      ),
      Answers(
        text: "You're free to try new things",
        personality: PersonalityType.adventurer,
      ),
    ],
  ),
  Question(
    text: "Your biggest strength is...",
    answers: [
      Answers(
        text: 'Thinking critically',
        personality: PersonalityType.thinker,
      ),
      Answers(
        text: 'Empathizing with others',
        personality: PersonalityType.feeler,
      ),
      Answers(text: "Staying organized", personality: PersonalityType.planner),
      Answers(
        text: "Being adventurous",
        personality: PersonalityType.adventurer,
      ),
    ],
  ),
];
