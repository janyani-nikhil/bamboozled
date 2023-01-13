import 'dart:math';

import 'package:bamboozled/main.dart';
import 'package:bamboozled/Calcpuzzle/quitmath.dart';
import 'package:bamboozled/Calcpuzzle/util/my_button.dart';
import 'package:bamboozled/Calcpuzzle/welcomemath.dart';
import 'package:flutter/material.dart';

import 'const.dart';

class MathGame extends StatefulWidget {
  const MathGame({Key? key}) : super(key: key);

  @override
  State<MathGame> createState() => _MathGameState();
}

class _MathGameState extends State<MathGame> {
  List<String> numberPad = [
    '7','8','9','C','4','5','6','DEL','1','2','3','=','0'
  ];
  var randomNumber = Random();
  int numA = 378;
  int numB = 229;
  String userAnswer = '';
  int score=0;
  void buttonTapped(String button)
  {
    setState(() {
      if(button == '=')
      {
        checkResult();
      }
      else if(button == 'C')
      {
        userAnswer='';
      }
      else if(button == 'DEL')
      {
        if(userAnswer.isNotEmpty) {
          userAnswer = userAnswer.substring(0, userAnswer.length - 1);
        }
      }
      else if(userAnswer.length<3){
        userAnswer += button;}
    });
  }

  void checkResult()
  {
    if (numA + numB == int.parse(userAnswer)){
      showDialog(context: context, builder: (context)
      {
        return AlertDialog(
          backgroundColor: Colors.deepPurple,
          content: Container(
            height: 200,
            color: Colors.deepPurple,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Correct!',
                  style: whiteTextStyle,
                ),
                GestureDetector(
                  onTap: goToNext,
                  child: Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(color: Colors.deepPurple[300],
                        borderRadius: BorderRadius.circular(8)),
                    child: const Icon(Icons.arrow_forward,
                      color: Colors.white,),
                  ),
                ),
              ],
            ),
          ),
        );
      }
      );
    }
    else {
      showDialog(context: context, builder: (context)
      {
        return AlertDialog(
          backgroundColor: Colors.deepPurple,
          content: Container(
            height: 200,
            color: Colors.deepPurple,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Incorrect!',
                  style: whiteTextStyle,
                ),
                GestureDetector(
                  onTap: showscore,
                  child: Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(color: Colors.deepPurple[300],
                        borderRadius: BorderRadius.circular(8)),
                    child: const Icon(Icons.arrow_forward,
                      color: Colors.white,),
                  ),
                ),
              ],
            ),
          ),
        );
      }
      );
    }
  }
  void goToNext()
  {
    Navigator.of(context).pop();
    setState(() {
      userAnswer = '';
    });
    numA = randomNumber.nextInt(500);
    numB = randomNumber.nextInt(500);
    score+=1;
  }

  void showscore()
  {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const quitmath()
        )
    );
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple[300],
        appBar: AppBar(
          title: Text("This is the game"),
          backgroundColor: Colors.deepPurple,
        ),
        body: Column(
            children: [
              Container(
                  height: 160,
                  width: 800,
                  color: Colors.deepPurple,
                  child:
                  Center(
                    child: Text("Score : "+ score.toString(),
                      style: whiteTextStyle,),
                  )
              ),
              Expanded(child: Container(
                  child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            numA.toString() + ' + ' + numB.toString() + ' = ',
                            style: whiteTextStyle,
                          ),
                          Container(
                            height: 50,
                            width: 100,

                            decoration: BoxDecoration(
                              color: Colors.deepPurple[400],
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Center(
                              child: Text(
                                  userAnswer,
                                  style: whiteTextStyle
                              ),
                            ),
                          )
                        ],
                      )
                  )

              )
              ),
              Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GridView.builder(
                        itemCount: numberPad.length,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                        itemBuilder: (context, index)
                        {
                          return MyButton(child: numberPad[index],onTap:() => buttonTapped(numberPad[index]),);
                        }),
                  )
              )
            ]
        )

    );
  }
}




