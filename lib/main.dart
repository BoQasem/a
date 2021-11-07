import 'package:app/screens/page_question1.dart';
import 'package:app/screens/page_question2.dart';
import 'package:app/screens/page_question3.dart';
import 'package:app/screens/score.dart';
import 'package:flutter/material.dart';

main() {
  return runApp(Main());
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: PageQuestion1(),
        routes: {
          'page_question2' : (context) => PageQuestion2(),
          'page_question3' : (context) => PageQuestion3(),
          'score'          : (context) => Score(),
        }
    );
  }
}
