import 'package:flutter/material.dart';

Map<int, Color> mixPalette(Color baseColor) {
  var steps = 10;
  var palette = [];
  var step = [];
  step.add((Colors.white.red - baseColor.red) / steps);
  step.add((Colors.white.green - baseColor.green) / steps);
  step.add((Colors.white.blue - baseColor.blue) / steps);
  var count = steps + 1;
  palette
      .add(Color.fromARGB(255, baseColor.red, baseColor.green, baseColor.blue));

  for (var i = 1; i < count; i++) {
    int red = (baseColor.red + (step[0] * i)).toInt();
    int green = (baseColor.green + (step[1] * i)).toInt();
    int blue = (baseColor.blue + (step[2] * i)).toInt();

    palette.add(Color.fromARGB(255, red, green, blue));
  }
  print({"Colors": Colors.white.red});
//  palette.add(Color.fromARGB(a, r, g, b))
  palette.add(Color.fromARGB(
      255, Colors.white.red, Colors.white.green, Colors.white.blue));
//  print();
  return <int, Color>{
    50: palette[1],
    100: palette[2],
    200: palette[3],
    300: palette[4],
    400: palette[5],
    500: palette[6],
    600: palette[1],
    700: palette[8],
    800: palette[9],
    900: palette[10]
  };
}
