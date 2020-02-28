import 'package:flutter/material.dart';
import 'package:quiz/qu.dart';

class QuizPage extends StatefulWidget {
  QuizPage({Key key}) : super(key: key);

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Questions> qu = [
    Questions(question: "are you vagetables", answer: true),
    Questions(question: "are you in a school", answer: false),
  ];
  int correctAnswer = 0;
  int wrongAnswer = 0;
  int quIndex = 0;
  bool quizCompleted = false;

  void nextQuestion(bool answer){
    setState(() {
      if(!quizCompleted){
        if(qu[quIndex].answer == answer){
       correctAnswer++;
        }else{
          wrongAnswer++;
        }
      }
      quIndex < qu.length -1 ? quIndex++ :  quizCompleted = true;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A4A72),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 50,
          horizontal: 10
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 4,
                child: Text(
                  qu[quIndex].question,
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.white
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: ButtonTheme(
                  minWidth: 200,
                  splashColor: Colors.redAccent,
                  buttonColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: RaisedButton(
                    onPressed: (){
                      nextQuestion(true);
                    },
                    child: Text(
                      "True",
                      style: TextStyle(
                          fontSize: 32,
                          color: Colors.white
                      ),

                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                flex: 1,

                child: ButtonTheme(
                  minWidth: 200,
                  splashColor: Colors.redAccent,
                  buttonColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: RaisedButton(
                    onPressed: (){
                      nextQuestion(false);
                    },
                    child: Text(
                      "False",
                      style: TextStyle(
                          fontSize: 32,
                          color: Colors.white
                      ),


                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          "Correct",
                          style: TextStyle(
                            color: Colors.white,
                              fontSize: 25
                ),
                        ),

                        Text(
                          "${correctAnswer}",
                          style: TextStyle(
                              color: Colors.yellowAccent,
                              fontSize: 25
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          "Wrong",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25
                          ),
                        ),

                        Text(
                          "${wrongAnswer}",
                          style: TextStyle(
                              color: Colors.redAccent,
                            fontSize: 25
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}