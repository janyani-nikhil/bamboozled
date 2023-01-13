import 'dart:math';
import 'package:bamboozled/main.dart';
import 'package:bamboozled/Calcpuzzle/util/my_button.dart';
import 'package:flutter/material.dart';

import 'mathgame.dart';



class welcomemath extends StatefulWidget {
  const welcomemath({Key? key}) : super(key: key);

  @override
  State<welcomemath> createState() => _welcomemathState();
}

class _welcomemathState extends State<welcomemath> {

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
                              MaterialPageRoute(builder: (context) => const MathGame()
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



