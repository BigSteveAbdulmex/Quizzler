import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:quizzler/widgets/answer_button.dart';
import 'package:quizzler/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({
    super.key,
    required this.onSelectAnswer,
  });

  final void Function(String answers) onSelectAnswer;

  @override
  State createState() {
    return _QuestionScreen();
  }
}

class _QuestionScreen extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return Center(
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Questions
            Text(
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 201, 153, 251),
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
              currentQuestion.text,
            ),
            const SizedBox(
              height: 30,
            ),
            // Answers
            ...currentQuestion.shuffledAnswers.map(
              (answer) {
                return AnswerButton(
                  answerText: answer,
                  onTapButton: () {
                    answerQuestion(answer);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
