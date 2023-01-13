import 'dart:math';
import 'package:bamboozled/Hangman/welcome.dart';
import 'package:bamboozled/main.dart';
import 'package:bamboozled/Calcpuzzle/util/my_button.dart';
import 'package:bamboozled/Calcpuzzle/welcomemath.dart';
import 'package:flutter/material.dart';



class cquit extends StatefulWidget {
  const cquit({Key? key}) : super(key: key);

  @override
  State<cquit> createState() => _cquitState();
}

class _cquitState extends State<cquit> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to Bamboozled"),
        backgroundColor: Colors.deepPurple,
      ),

      // extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      body:
      Center(
        child: Column(
            children: <Widget>[
              Container(
                  height: 70,
                  width: 280,
                  color: Colors.transparent,
                  margin: EdgeInsets.only(left: 5.00, top: 100.0, right: 5.0),
                  child: (
                      TextButton(
                        child: Text("YOU WON"),
                        style: TextButton.styleFrom(
                          textStyle: const TextStyle(
                            fontSize: 40,


                          ),
                          primary: Colors.deepPurple,
                        ),
                        onPressed: ()
                        {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => const welcome()
                              )
                          );
                        },
                      )
                  )
              ),
              Container(
                  height: 70,
                  width: 180,
                  color: Colors.deepPurple,
                  margin: EdgeInsets.only(left: 5.00, top: 250.0, right: 5.0),
                  child: (
                      TextButton(
                        child: Text("Restart"),
                        style: TextButton.styleFrom(
                          textStyle: const TextStyle(
                            fontSize: 20,
                          ),
                          primary: Colors.white,
                        ),
                        onPressed: ()
                        {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => const welcome()
                              )
                          );
                        },
                      )
                  )
              ),

              Container(
                  height: 70,
                  width: 180,
                  color: Colors.deepPurple,
                  margin: EdgeInsets.only(left: 5.00, top: 50.0, right: 5.0),
                  child: (
                      TextButton(
                        child: Text("Quit"),
                        style: TextButton.styleFrom(
                          textStyle: const TextStyle(
                            fontSize: 20,
                          ),
                          primary: Colors.white,
                        ),
                        onPressed: (){
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => homepage()
                              )
                          );
                        },
                      )
                  )
              ),
            ]
        ),
      ),

    );
  }
}



