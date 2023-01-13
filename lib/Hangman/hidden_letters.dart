import 'package:bamboozled/Calcpuzzle/const.dart';
import "package:flutter/material.dart";

    Widget hiddenletter(String char, bool visible) {
  return Container(
    width: 50,
    height: 50,
    alignment: Alignment.center,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(1.0),
    color: Colors.black45),
    child: Visibility(
      visible: !visible,
      child: Text(char, style: whiteTextStyle)
    )
  );
    }