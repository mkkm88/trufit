import 'package:flutter/material.dart';
import 'dart:ui';

class ConstColors {
  static Color lightGrey = fromHex('#585454');

  static Color darkGrey = fromHex('#3F4045');

  static Color lightGreen = fromHex('#6BD2A7');
  static Color white200 = fromHex('#F2F9F5');
  static Color darkGreen = fromHex('#44615F');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}