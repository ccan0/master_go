import 'package:flutter/material.dart';

class ColorConstants {
  //Gerekmediği sürece sınıfın oluşturulamamasını sağlıyoruz
  static ColorConstants? _instance;
  static ColorConstants get instance {
    _instance ??= ColorConstants._init();

    return _instance!;
  }

  ColorConstants._init();

  Color background = const Color(0xFFFFFFFF);
  Color primary = const Color(0xFF20C3AF);
  Color black = const Color(0xFF525464);
  Color white = const Color(0xFFFFFFFF);
  Color error = const Color(0xFFF01F0E);
  Color success = const Color(0xFF2AA952);
  Color grey = const Color(0xFFB0B0C3);
  Color darkGrey = const Color(0xFF838391);
  Color pink = const Color(0xFFFFB19D);
}
