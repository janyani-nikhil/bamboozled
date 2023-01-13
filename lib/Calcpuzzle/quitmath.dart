import 'dart:math';
import 'package:bamboozled/main.dart';
import 'package:bamboozled/Calcpuzzle/util/my_button.dart';
import 'package:bamboozled/Calcpuzzle/welcomemath.dart';
import 'package:flutter/material.dart';
import 'const.dart';
import 'mathgame.dart';


class quitmath extends StatefulWidget {
  const quitmath({Key? key}) : super(key: key);

  @override
  State<quitmath> createState() => _quitmathState();
}

class _quitmathState extends State<quitmath> {

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
                              MaterialPageRoute(builder: (context) => const welcomemath()
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



