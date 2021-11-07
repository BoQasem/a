import 'package:app/models/question_list.dart';
import 'package:app/widgets/content_question.dart';
import 'package:flutter/material.dart';

class PageQuestion1 extends StatefulWidget {

  const PageQuestion1({Key? key}) : super(key: key);

  @override
  State<PageQuestion1> createState() => _PageQuestion1State();
}

class _PageQuestion1State extends State<PageQuestion1> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ContentQuestion(
                  question: QuestionList.contactList[0].question,
                  answer: QuestionList.contactList[0].answer,
                  oneChoose: 1,
                ),
                SizedBox(height:30),

                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'page_question2');
                    },
                    icon: Icon(
                      Icons.arrow_forward,
                      size: 40,
                    )
                )
              ]
          )
      ),
    );
  }
}
