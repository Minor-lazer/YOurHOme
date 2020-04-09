import 'package:flutter/material.dart';

class HexToColor extends Color{
  static _hexToColor(String code) {
    return int.parse(code.substring(1, 7), radix: 16) + 0xFF000000;
  }
  HexToColor(final String code) : super(_hexToColor(code));
}

// final Color Primary = Color(HexToColor._hexToColor('#657DB3'));
// final Color Primary = Color(HexToColor._hexToColor('#21346E'));
// final Color Primary = Color(HexToColor._hexToColor('#405EB9'));

final Color Primary = Color(HexToColor._hexToColor('#3A62BC'));
final Color Accent = Color(HexToColor._hexToColor('#DAE0ED'));