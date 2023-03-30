import 'package:flutter/material.dart';
import 'package:g_quiz_app/quizappuipage.dart';

void main() {
  runApp(MusicQuiz());
}

class Question {
  final String text;
  final List<String> choices;

  Question(this.text, this.choices);
}

class Quiz {
  final List<Question> questions;

  Quiz(this.questions);
}

class MusicQuiz extends StatefulWidget {
  @override
  _MusicQuizState createState() => _MusicQuizState();
}

class _MusicQuizState extends State<MusicQuiz> {
  Quiz quiz = Quiz([
    Question(
        "In the song &ldquo;The Ultimate Showdown of Ultimate Destiny,&rdquo; who is the only one to survive the battle?",
        ["Mr. Rogers",  "Batman",
          "Chuck Norris",
          "Godzilla"]),
    Question("Which band had hits in 1972 with the songs &quot;Baby I&#039;m A Want You&quot;, &quot;Everything I Own&quot; and &quot;The Guitar Man&quot;",
        ["Bread", "America",
          "Chicago",
          "Smokie",]),
    Question("Who wrote the musical composition, &quot;Rhapsody In Blue&quot;?",
        ["George Gershwin", "Irving Berlin",
          "Duke Ellington",
          "Johnny Mandel"]),
    Question("The 1952 musical composition 4&#039;33&quot;, composed by prolific American composer John Cage, is mainly comprised of what sound?",
        ["Silence",
          "Farts",
          "People talking",
          "Cricket chirps"]),
    Question( "In what film was the Michael Jackson song &quot;Will You Be There&quot; featured?",
        ["Free Willy", "Sleepless in Seattle",
          "Men in Black",
          "Bad Boys"]),
    Question( "Which rock band released the album &quot;The Bends&quot; in March 1995?",
        ["Radiohead","Nirvana",
          "Coldplay",
          "U2"]),
    Question( "Who was the lead singer and frontman of rock band R.E.M?",
        ["Michael Stipe", "Chris Martin",
          "Thom Yorke",
          "George Michael"]),
    Question( "Who was the lead singer and frontman of rock band R.E.M?",
        ["1987","1985",
          "1986",
          "1988"]),
    Question("What was the name of the Wu-Tang Clan album Martin Shkreli bought for 2 million dollars?",
        ["Once Upon a Time in Shaolin","A Better Tomorrow",
          "8 Diagrams",
          "The Saga Continues"]),
    Question("Which Beatle wrote and sang the song &quot;Why Don&#039;t We Do It in the Road&quot; after being inspired by seeing two monkeys copulating in the street?",
        [ "Paul","John",
          "George",
          "Ringo"]),


  ]);

  List<int> selectedAnswers = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("G_quizapp"),
          backgroundColor: Colors.green,
        ),
        body: ListView.builder(
          itemCount: quiz.questions.length,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    quiz.questions[index].text,
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                ),
                ...List.generate(
                  quiz.questions[index].choices.length,
                  (choiceIndex) => RadioListTile(
                    title: Text(quiz.questions[index].choices[choiceIndex]),
                    value: choiceIndex,
                    groupValue: selectedAnswers.length > index
                        ? selectedAnswers[index]
                        : null,
                    onChanged: (value) {
                      setState(() {
                        if (selectedAnswers.length > index) {
                          selectedAnswers[index] = value!;
                        } else {
                          selectedAnswers.add(value!);
                        }
                      });
                    },
                  ),
                ),
                Divider(),
              ],
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.check),
          onPressed: () {
            int correctAnswers = 0;
            for (int i = 0; i < quiz.questions.length; i++) {
              if (selectedAnswers.length > i && selectedAnswers[i] == 0) {
                correctAnswers++;
              }
            }
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text('Quiz Results'),
                content: Text(
                    'You got $correctAnswers out of ${quiz.questions.length} questions correct.'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      setState(() {
                        selectedAnswers = [];
                      });
                    },
                    child: Text('OK'),
                  ),
                ],
              ),
            );
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
             return Quizappuipage();
            },));
          },
        ),
      ),
    );
  }
}
