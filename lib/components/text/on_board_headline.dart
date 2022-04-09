import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/constants/color/color_constants.dart';

class OnBoardingHeadline extends StatelessWidget {
  final String text;

  const OnBoardingHeadline({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.ubuntu(fontSize: 40, fontWeight: FontWeight.normal, color: ColorConstants.instance.black),
    );
  }
}
