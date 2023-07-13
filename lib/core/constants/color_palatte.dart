import 'package:flutter/material.dart';

class ColorPalette {
  static const Color primaryColor = Color.fromARGB(255, 204, 156, 85);
  static const Color secondColor = Color.fromARGB(255, 232, 163, 103);
  static const Color yellowColor = Color(0xffFE9C5E);

  static const Color dividerColor = Color(0xFFE5E7EB);
  static const Color text1Color = Color.fromARGB(255, 75, 64, 50);
  static const Color subTitleColor = Color(0xFF838383);
  static const Color backgroundScaffoldColor = Color(0xFFF2F2F2);
}

class Gradients {
  static const Gradient defaultGradientBackground = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomLeft,
    colors: [
      Color.fromARGB(255, 232, 215, 103),
      Color.fromARGB(255, 204, 150, 85),
    ],
  );
}
