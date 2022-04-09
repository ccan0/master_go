import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

import '../color/color_constants.dart';

class TextStyleConstants {
  //Gerekmediği sürece sınıfın oluşturulamamasını sağlıyoruz
  static TextStyleConstants? _instance;
  static TextStyleConstants get instance {
    _instance ??= TextStyleConstants._init();

    return _instance!;
  }

  TextStyleConstants._init();

  TextStyle onBoardHeadline =
      GoogleFonts.ubuntu(fontSize: 40, fontWeight: FontWeight.normal, color: ColorConstants.instance.black);
  TextStyle onBoardNormal =
      GoogleFonts.ubuntu(fontSize: 16, fontWeight: FontWeight.normal, color: ColorConstants.instance.darkGrey);
}
