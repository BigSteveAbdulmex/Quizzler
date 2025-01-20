import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State createState() {
    return _QuestionScreen();
  }
}

class _QuestionScreen extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Questions
          const Text(
            'The question...',
            style: TextStyle(
              color: Colors.white,
              fontSize: 23,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          // Answers
          ElevatedButton(
            onPressed: () {},
            child: Text('Answer 1'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Answer 2'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Answer 3'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Answer 4'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Answer 5'),
          ),
        ],
      ),
    );
  }
}
