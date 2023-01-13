import 'dart:math';
import 'package:bamboozled/Hangman/hangman.dart';
import 'package:bamboozled/main.dart';
import 'package:bamboozled/Calcpuzzle/util/my_button.dart';
import 'package:flutter/material.dart';

class welcome extends StatefulWidget {
  const welcome({Key? key}) : super(key: key);

  @override
  State<welcome> createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to the Game"),
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
                  margin: EdgeInsets.only(left: 5.00, top: 250.0, right: 5.0),
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
                              MaterialPageRoute(builder: (context) => const hangman()
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



