import 'package:flutter/material.dart';

import '../../core/constants/color/color_constants.dart';

class AddButton extends StatefulWidget {
  final VoidCallback onTap;

  const AddButton({Key? key, required this.onTap}) : super(key: key);

  @override
  State<AddButton> createState() => _AddButtonState();
}

class _AddButtonState extends State<AddButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 82,
        height: 82,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9999),
          color: ColorConstants.instance.primary,
        ),
        child: Icon(
          Icons.add,
          color: ColorConstants.instance.white,
        ),
      ),
      onTap: widget.onTap,
    );
  }
}
