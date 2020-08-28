import 'package:flutter/material.dart';

MaterialColor primarySwatchColor =
    MaterialColor(Color.fromRGBO(59, 131, 252, 1.0).value, {
  50: Color.fromRGBO(59, 131, 252, 1.0),
  100: Color.fromRGBO(59, 131, 252, 1.0),
  200: Color.fromRGBO(59, 131, 252, 1.0),
  300: Color.fromRGBO(59, 131, 252, 1.0),
  400: Color.fromRGBO(59, 131, 252, 1.0),
  500: Color.fromRGBO(59, 131, 252, 1.0),
  600: Color.fromRGBO(59, 131, 252, 1.0),
  700: Color.fromRGBO(59, 131, 252, 1.0),
  800: Color.fromRGBO(59, 131, 252, 1.0),
  900: Color.fromRGBO(59, 131, 252, 1.0),
});

Color darkBlueColor = Color.fromRGBO(59, 131, 252, 1.0);

Color greyColor = Color(0xFF707070);

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
