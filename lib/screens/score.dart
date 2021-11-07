import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Score extends StatefulWidget {
  static int s = 0;
  Score({Key?key});

  @override
  State<Score> createState() => _ScoreState();
}

class _ScoreState extends State<Score> {
  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        Center(
          child:
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    'Your score',
                    style: TextStyle(fontSize: 20),
                ),
                SizedBox(height:15),

                CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.green,
                  child: Text(
                      Score.s.toString(),
                      style: TextStyle(fontSize: 40),
                  ),
                )
              ],
            )
        ),
    );
  }
}
