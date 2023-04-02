import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';



class Quizappuipage extends StatefulWidget {
  const Quizappuipage({Key? key}) : super(key: key);

  @override
  State<Quizappuipage> createState() => _QuizappuipageState();
}

class _QuizappuipageState extends State<Quizappuipage> {
  Future<dynamic> getdata()async{
    final url="https://opentdb.com/api_category.php";
    var response =await get(Uri.parse(url));
    if( response.statusCode==200)
    {
      var body=jsonDecode(response.body);
      return body;
    }


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: getdata(),
          builder: (context,snapshot) {

            if (snapshot.connectionState==ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator(),);
            }

            if(snapshot.hasData){
              return ListView.builder(
                  itemCount: snapshot.data["trivia_categories"].length,
                  itemBuilder: (context,index) {



                    return Padding(
                      padding: const EdgeInsets.all(10),
                      child: InkWell(
                        onTap: (){

                        },
                        child: Container(
                          height: 80,
                          width: 80,
                          color: Colors.blueAccent
                          ,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Text(snapshot.data["trivia_categories"][index][ "id"].toString()),
                                ),
                                Text(snapshot.data["trivia_categories"][index]["name"].toString()),
                              ],
                            ),

                        ),
                      ),
                    );
                  }



              );
            }else{


              return Text("somthing went wrong");
            }








          }
      ),
    );
  }
}
