import 'package:flutter/material.dart';

class ColorManager {
  static const Color mainBlue = Color.fromARGB(255, 0, 122, 255);
  static const Color darkBlue =  Color.fromARGB(122, 0, 123, 255);
  static Color mainBlue5Opacity = ColorManager.mainBlue.withValues(alpha: 0.5);
  static const Color lightBlue = Color(0xFF247CFF);
  static const Color white = Color(0xFFFFFFFF);
  static Color white8Opacity = ColorManager.white.withValues(alpha: 0.8);
  static const Color grey = Color(0xFF9D9FA0);
  static const Color lightGrey = Color(0xFFF6F7FA);
  static const Color black = Color(0xFF303030);
  static const Color red =Colors.red;
  
  
}