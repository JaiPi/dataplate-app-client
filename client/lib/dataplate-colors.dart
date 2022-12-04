import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

// static const Color larjanja = Color(0x00e68c84);
// static const Color azul = Color(0x00247b8d);
// static const Color cinzento = Color(0x00b3b3b3);

class DataPlateColors {
  DataPlateColors._(); // this basically makes it so you can instantiate this class

  static const _laranjaValue = 0xFFe68c84;

  static const MaterialColor laranjaMaterialColor = MaterialColor(
    _laranjaValue,
    <int, Color>{
      50: Color.fromRGBO(36, 123, 141, .1),
      100: Color.fromRGBO(36, 123, 141, .2),
      200: Color.fromRGBO(36, 123, 141, .3),
      300: Color.fromRGBO(36, 123, 141, .4),
      400: Color.fromRGBO(36, 123, 141, .5),
      500: Color.fromRGBO(36, 123, 141, .6),
      600: Color.fromRGBO(36, 123, 141, .7),
      700: Color.fromRGBO(36, 123, 141, .8),
      800: Color.fromRGBO(36, 123, 141, .9),
      900: Color.fromRGBO(36, 123, 141, 1),
    },
  );

  static const Color azul = Color(0xFF247b8d);
  static const Color cinzento = Color.fromARGB(255, 249, 249, 249);
  static const Color larjanja = Color(0xFFe68c84);
}
