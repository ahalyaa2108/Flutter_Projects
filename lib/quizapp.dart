import 'package:flutter/material.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({Key key}) : super(key: key);

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  void answerQuestion() {
    print("We got the answer!!!!");
  }

  @override
  Widget build(BuildContext context) {
    var questions = ["What's is your favorite color"];
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz App made easy!!"),
      ),
      body: Column(
        children: [
          Text("The questions are"),
          RaisedButton(
            onPressed: () {
              print("Bharani clicked");
            },
            child: Text("Answer1"),
          ),
          RaisedButton(
            onPressed: answerQuestion,
            child: Text("Answer2"),
          ),
          RaisedButton(
            onPressed: answerQuestion,
            child: Text("Answer3"),
          ),
        ],
      ),
    );
  }
}
