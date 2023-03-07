import 'package:flutter/cupertino.dart';

class LightThemeColorPalette {
  static const kLightPrimaryColor = Color.fromRGBO(0, 0, 0, 1);
  static const kLightSecondaryColor = Color.fromRGBO(60, 60, 67, 0.6);
  static const kLightTertiaryColor = Color.fromRGBO(60, 60, 67, 0.3);
  static const kLightQuaternaryColor = Color.fromRGBO(60, 60, 67, 0.18);
}

class DarkThemeColorPalette {
  static const kLightPrimaryColor = Color.fromRGBO(255, 255, 255, 1);
  static const kLightSecondaryColor = Color.fromRGBO(235, 235, 245, 0.6);
  static const kLightTertiaryColor = Color.fromRGBO(235, 235, 245, 0.3);
  static const kLightQuaternaryColor = Color.fromRGBO(235, 235, 245, 0.18);
}

class GradientColorPalette {
  static const cornflowerBlueWithMirage = LinearGradient(colors: [
    Color.fromRGBO(46, 51, 90, 1),
    Color.fromRGBO(28, 27, 51, 1),
  ]);
  static const purpleHeartWithMinsk = LinearGradient(colors: [
    Color.fromRGBO(89, 54, 180, 1),
    Color.fromRGBO(54, 42, 132, 1),
  ]);
  static const haveLockBlueWithLavender = LinearGradient(colors: [
    Color.fromRGBO(66, 123, 209, 1),
    Color.fromRGBO(193, 89, 236, 1),
  ]);
  static const melroseWithCatalinaBlue = LinearGradient(colors: [
    Color.fromRGBO(174, 201, 255, 1),
    Color.fromRGBO(174, 201, 255, 1),
    Color.fromRGBO(8, 48, 114, 1),
  ]);
  static const mauveWithTrueV = RadialGradient(colors: [
    Color.fromRGBO(247, 203, 253, 1),
    Color.fromRGBO(119, 88, 209, 1),
  ]);
  static const purpleHeart = RadialGradient(colors: [
    Color.fromRGBO(97, 47, 171, 0),
    Color.fromRGBO(97, 47, 171, 1),
    Color.fromRGBO(97, 47, 171, 0),
    Color.fromRGBO(97, 47, 171, 1),
  ]);
}

class SolidColorPalette {
  static const gigas = Color.fromRGBO(72, 49, 157, 1);
  static const portGore = Color.fromRGBO(31, 29, 71, 1);
  static const electricViolet = Color.fromRGBO(196, 39, 251, 1);
  static const fog = Color.fromRGBO(224, 217, 255, 1);
}
