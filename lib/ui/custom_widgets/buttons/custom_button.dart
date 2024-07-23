// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:furry_care/core/constants/text_style.dart';
import 'package:furry_care/core/other/screen_utils.dart';

class CustomButton extends StatelessWidget {
  final String? text;
  final onTap;
  final Color? buttonColor;
  final Color? textColor;
  final BorderRadius? borderRadius;
  final Border? border;

  const CustomButton(
      {super.key,
      this.onTap,
      this.text,
      this.buttonColor,
      this.textColor,
      this.border,
      this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: buttonColor,
            border: border,
            borderRadius: borderRadius ?? BorderRadius.circular(30.r)),
        child: Text('$text', style: style16.copyWith(color: textColor)),
      ),
    );
  }
}
