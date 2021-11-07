import 'package:app/models/question.dart';

class QuestionList {
  static List<Question> contactList = [
    new Question(
      question: 'Is Alexandria the capital of Egypt ?',
      answer: false,
    ),
    new Question(
      question: 'Does the car have four wheels ?',
      answer: true,
    ),
    new Question(
      question: 'Is flutter consider cross platform ?',
      answer: true,
    ),
  ];
}