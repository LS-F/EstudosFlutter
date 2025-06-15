import 'package:flutter/material.dart';
import 'dart:math' as math;

class ChangeColor {

  Color randomColor = Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);  
 
}

Color newColor(){
  ChangeColor colorChanger = ChangeColor();
  return colorChanger.randomColor;
}
