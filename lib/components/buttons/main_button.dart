import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:master_go/core/base/state/base_state.dart';
import 'package:master_go/core/constants/color/color_constants.dart';

class MainButon extends StatefulWidget {
  final String buttonText;
  final VoidCallback onTap;

  const MainButon({Key? key, required this.buttonText, required this.onTap}) : super(key: key);

  @override
  State<MainButon> createState() => _MainButonState();
}

class _MainButonState extends BaseState<MainButon> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: dynamicWidth(315),
        height: dynamicHeight(60),
        alignment: Alignment.center,
        color: ColorConstants.instance.primary,
        child: Text(
          widget.buttonText,
          style: GoogleFonts.ubuntu(fontSize: 16, fontWeight: FontWeight.w600, color: ColorConstants.instance.white),
        ),
      ),
      onTap: widget.onTap,
    );
  }
}
