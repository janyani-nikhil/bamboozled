import 'dart:math';
import 'package:bamboozled/Calcpuzzle/quitmath.dart';
import 'package:bamboozled/Calcpuzzle/util/my_button.dart';
import 'package:bamboozled/Calcpuzzle/welcomemath.dart';
import 'package:flutter/material.dart';
import 'Calcpuzzle/const.dart';
import 'Calcpuzzle/mathgame.dart';
import 'Hangman/hangman.dart';
import 'Hangman/welcome.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: enter(),
    );
  }
}

class enter extends StatefulWidget {
  const enter({Key? key}) : super(key: key);

  @override
  State<enter> createState() => _enterState();
}

class _enterState extends State<enter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BAMBOOZLED"),
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
                  width: 180,
                  color: Colors.deepPurple,
                  margin: EdgeInsets.only(left: 5.00, top: 300.0, right: 5.0),
                  child: (
                      TextButton(
                        child: Text("Click to Play"),
                        style: TextButton.styleFrom(
                          textStyle: const TextStyle(
                            fontSize: 20,
                          ),
                          primary: Colors.white,
                        ),
                        onPressed: ()
                        {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => const homepage()
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



class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
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
      Column(
          children: <Widget>[
            Container(
                height: 90,
                width: 400,
                color: Colors.transparent,
                margin: EdgeInsets.only(left: 5.00, top: 100.0, right: 5.0),
                child: (
                    TextButton(
                      child: Text("Choose to Play"),
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                        primary: Colors.deepPurple,
                      ),
                      onPressed: ()
                      {},
                    )
                )
            ),
            Container(
                height: 90,
                width: 400,
                color: Colors.deepPurple,
                margin: EdgeInsets.only(left: 5.00, top: 150.0, right: 5.0),
                child: (
                    TextButton(
                      child: Text("Count it on"),
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(
                          fontSize: 30,
                        ),
                        primary: Colors.white,
                      ),
                      onPressed: ()
                      {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => const welcomemath()
                            )
                        );
                      },
                    )
                )
            ),

            Container(
                height: 90,
                width: 400,
                color: Colors.deepPurple,
                margin: EdgeInsets.only(left: 5.00, top: 50.0, right: 5.0),
                child: (
                    TextButton(
                      child: Text("Striker"),
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(
                          fontSize: 30,
                        ),
                        primary: Colors.white,
                      ),
                      onPressed: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => welcome()
                            )
                        );
                      },
                    )
                )
            ),

          ]
      ),

    );
  }
}



