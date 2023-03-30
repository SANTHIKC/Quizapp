import 'package:flutter/material.dart';

import 'musicquiz.dart';

class Quizappuipage extends StatefulWidget {
  const Quizappuipage({Key? key}) : super(key: key);

  @override
  State<Quizappuipage> createState() => _QuizappuipageState();
}

class _QuizappuipageState extends State<Quizappuipage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("G_quizapp")),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Text(
              "Select a category to start the quiz",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
              ),
            ),
                )),
            Padding(
              padding: const EdgeInsets.all(22),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          color: Colors.greenAccent),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) {
                              return MusicQuiz();
                            },
                          ));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 40, left: 50),
                          child: Text("Music",
                              style: TextStyle(
                                color: Colors.brown,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          color: Colors.greenAccent),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30, left: 30),
                        child: Text(" Cartoon & Animations",
                            style: TextStyle(
                              color: Colors.brown,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(22),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          color: Colors.greenAccent),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40, left: 40),
                        child: Text("Vehicles",
                            style: TextStyle(
                              color: Colors.brown,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          color: Colors.greenAccent),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40, left: 35),
                        child: Text("Geography",
                            style: TextStyle(
                              color: Colors.brown,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(22),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          color: Colors.greenAccent),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40, left: 20),
                        child: Text(" Video Games",
                            style: TextStyle(
                              color: Colors.brown,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          color: Colors.greenAccent),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40, left: 5),
                        child: Text("General Knowledge",
                            style: TextStyle(
                              color: Colors.brown,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(22),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          color: Colors.greenAccent),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40, left: 40),
                        child: Text("Sports",
                            style: TextStyle(
                              color: Colors.brown,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          color: Colors.greenAccent),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40, left: 40),
                        child: Text("History",
                            style: TextStyle(
                              color: Colors.brown,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(22),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          color: Colors.greenAccent),
                      child: Padding(
                        padding: const EdgeInsets.all(19),
                        child: Text(" Japanese Anime & Manga",
                            style: TextStyle(
                              color: Colors.brown,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          color: Colors.greenAccent),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40, left: 25),
                        child: Text("Video Games",
                            style: TextStyle(
                              color: Colors.brown,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
