import 'package:app/models/question_list.dart';
import 'package:app/widgets/content_question.dart';
import 'package:flutter/material.dart';

class PageQuestion2 extends StatefulWidget {
  const PageQuestion2({Key? key}) : super(key: key);

  @override
  State<PageQuestion2> createState() => _PageQuestion2State();
}

class _PageQuestion2State extends State<PageQuestion2> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ContentQuestion(
                  question: QuestionList.contactList[1].question,
                  answer: QuestionList.contactList[1].answer,
                  oneChoose: 1,
                ),
                SizedBox(height:30),

                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'page_question3');
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
