import 'package:flutter/widgets.dart';

Color hexToColor(String code) {
  return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}

Color coursesBackground = hexToColor("#651089");
Color moviesBackground = hexToColor("#7758d9");
Color musicBackground = hexToColor("#cd443e");
Color workoutsBackground = hexToColor("#fd9792");
Color text = hexToColor("#fff6ed");
Color fab = hexToColor("#7758d9");

Color homeBackground = hexToColor("#ffffff");
Color textSubtitle = hexToColor("#9a9a9a");

Color searchBackground = hexToColor("#f3f2f0");
