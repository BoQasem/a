import 'package:app/models/question_list.dart';
import 'package:app/widgets/content_question.dart';
import 'package:flutter/material.dart';

class PageQuestion3 extends StatefulWidget {
  const PageQuestion3({Key? key}) : super(key: key);

  @override
  State<PageQuestion3> createState() => _PageQuestion3State();
}

class _PageQuestion3State extends State<PageQuestion3> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ContentQuestion(
                  question: QuestionList.contactList[2].question,
                  answer: QuestionList.contactList[2].answer,
                  oneChoose: 1,
                ),
                SizedBox(height:30),

                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'score');
                    },
                    icon: Icon(
                      Icons.arrow_forward,
                      size: 40,
                    )
                ),
              ]
          )
      ),
    );
  }
}
