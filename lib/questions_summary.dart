import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        '${(data['question_index'] as int) + 1}. ${data['question']}',
                        style: TextStyle(color: Colors.white),
                      ),

                      const SizedBox(height: 5),

                      Text(
                        'Your answer: ${data['user_answer']}',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Correct answer: ${data['correct_answer']}',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
