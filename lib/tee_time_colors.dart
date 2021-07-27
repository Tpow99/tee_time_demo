import 'package:flutter/material.dart';

class TeeTimeColors{
  static MaterialColor primaryColor = MaterialColor(0xFF003E52  , primaryColorMap);
  static MaterialColor secondaryColor = MaterialColor(0xFFA0E2BA , secondaryColorMap);
  static MaterialColor accentBlue = MaterialColor(0xFFB2E1D8  , accentYellowMap);

  static Map<int, Color> primaryColorMap = {
    50: Color.fromRGBO(0, 62, 82, .1),
    100: Color.fromRGBO(0, 62, 82, .2),
    200: Color.fromRGBO(0, 62, 82, .3),
    300: Color.fromRGBO(0, 62, 82, .4),
    400: Color.fromRGBO(0, 62, 82, .5),
    500: Color.fromRGBO(0, 62, 82, .6),
    600: Color.fromRGBO(0, 62, 82, .7),
    700: Color.fromRGBO(0, 62, 82, .8),
    800: Color.fromRGBO(0, 62, 82, .9),
    900: Color.fromRGBO(0, 62, 82, 1),
  };

  static Map<int, Color> secondaryColorMap = {
    50: Color.fromRGBO( 160, 226, 186, .1),
    100: Color.fromRGBO( 160, 226, 186, .2),
    200: Color.fromRGBO(160, 226, 186, .3),
    300: Color.fromRGBO( 160, 226, 186,.4),
    400: Color.fromRGBO( 160, 226, 186, .5),
    500: Color.fromRGBO( 160, 226, 186, .6),
    600: Color.fromRGBO( 160, 226, 186, .7),
    700: Color.fromRGBO(160, 226, 186, .8),
    800: Color.fromRGBO( 160, 226, 186, .9),
    900: Color.fromRGBO(160, 226, 186, 1),
  };

  static Map<int, Color> accentYellowMap = {
    50: Color.fromRGBO(178, 225, 216, .1),
    100: Color.fromRGBO(178, 225, 216, .2),
    200: Color.fromRGBO(178, 225, 216, .3),
    300: Color.fromRGBO(178, 225, 216, .4),
    400: Color.fromRGBO(178, 225, 216, .5),
    500: Color.fromRGBO(178, 225, 216, .6),
    600: Color.fromRGBO(178, 225, 216, .7),
    700: Color.fromRGBO(178, 225, 216, .8),
    800: Color.fromRGBO(178, 225, 216, .9),
    900: Color.fromRGBO(178, 225, 216, 1),
  };

}