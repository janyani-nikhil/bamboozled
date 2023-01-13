import 'package:bamboozled/Calcpuzzle/const.dart';
import 'package:bamboozled/Calcpuzzle/quitmath.dart';
import 'package:bamboozled/Hangman/hangfigure.dart';
import 'package:bamboozled/Hangman/hidden_letters.dart';
import 'package:bamboozled/Hangman/quit.dart';
import 'package:bamboozled/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'const/const.dart';
import 'cquit.dart';

class hangman extends StatefulWidget {
  const hangman({Key? key}) : super(key: key);

  @override
  State<hangman> createState() => _hangmanState();
}

class _hangmanState extends State<hangman> {

  var characters = "abcdefghijklmnopqrstuvwxyz".toUpperCase();
  var word = "ACTION";
  var tries = 0;
  var correct = 0;
  List<String> SelectedChar = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Save the Man"),
        elevation: 0.0,
        backgroundColor: Colors.black38,
      ),
        body: Column(
          children: [
            Expanded(
              flex: 3,
            child: Column(
              children: [
                Expanded(

                  flex:4,
                  child: Stack(
                    children: [
                      figure(GameUI.hang, tries>=0),
                      figure(GameUI.head, tries>=1),
                      figure(GameUI.body, tries>=2),
                      figure(GameUI.larm, tries>=3),
                      figure(GameUI.rarm, tries>=4),
                      figure(GameUI.lleg, tries>=5),
                      figure(GameUI.rleg, tries>=6),

                    ],

                  ),
                ),
                Expanded(child: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: word.split("").map((e) => hiddenletter(e,
                    !SelectedChar.contains(e))).toList()
                  ),


                ))
              ],
              )
            ),
            Expanded(
              flex: 2,
                child: Container(
                  color: Colors.black12,
                  padding: EdgeInsets.all(8.0),
                  child: GridView.count(
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 7,
                    crossAxisSpacing: 4,
                    mainAxisSpacing: 4,
                    children: characters.split("").map((e) {
                      return ElevatedButton(
                      style:  ElevatedButton.styleFrom(
                        backgroundColor: Colors.black45,
                      )
                      ,onPressed: SelectedChar.contains (e.toUpperCase()) ? null:(){
                        setState((){
                          SelectedChar.add(e.toUpperCase());
                          if(!word.split("").contains(e.toUpperCase()))
                            {
                              tries++;
                            }
                          else
                            {
                              correct++;
                            }
                          if(correct>=6)
                          {
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) => cquit()));
                          }
                          if(tries>=6)
                            {
                              Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) => quit()));
                            }
                        });
                      }, child: Text(e,
                      style: whiteTextStyle));
                    }).toList(),
                  )
                )
            ),
          ]
        ),

      );
  }
}
