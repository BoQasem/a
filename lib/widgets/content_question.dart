import 'package:app/screens/score.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContentQuestion extends StatefulWidget {
  final String question;
  final bool answer;
  int oneChoose = 0;

  ContentQuestion(
      {required this.question, required this.answer, required this.oneChoose});

  @override
  State<ContentQuestion> createState() => _ContentQuestionState();
}

class _ContentQuestionState extends State<ContentQuestion> {
  Color colorButtonYes = Color(0xFFbdbdbd);
  Color colorButtonNo = Color(0xFFbdbdbd);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          // for question
          Text(
            widget.question,
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 28),

          // for Button Yes
          MaterialButton(
            onPressed: () {
              setState(() {
                if (widget.oneChoose == 1) {
                  if (!widget.answer)
                    colorButtonYes = Colors.red;
                  else
                    colorButtonYes = Colors.green;
                }
                if (colorButtonYes == Colors.green) Score.s++;
                widget.oneChoose++;
              });
            },
            child: Container(
              color: colorButtonYes,
              width: 250,
              height: 70,
              child: Center(
                  child: Text('Yes',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      )
                  )
              ),
            ),
          ),
          SizedBox(height: 10),

          // for Button No
          MaterialButton(
            onPressed: () {
              setState(() {
                if (widget.oneChoose == 1) {
                  if (widget.answer)
                    colorButtonNo = Colors.red;
                  else
                    colorButtonNo = Colors.green;
                }
                if (colorButtonNo == Colors.green) Score.s++;
                widget.oneChoose++;
              });
            },
            child: Container(
              color: colorButtonNo,
              width: 250,
              height: 70,
              child: Center(
                  child: Text('No',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      )
                  )
              ),
            ),
          ),
        ]
      ),
    );
  }
}
