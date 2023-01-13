import 'package:bamboozled/Calcpuzzle/const.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final child;
  final VoidCallback onTap;
  const MyButton({Key? key, required this.child,required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
            decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular((8))
            ),
            child: Center(
              child: Text(child,
                  style: whiteTextStyle),
            )
        ),
      ),
    );
  }
}
