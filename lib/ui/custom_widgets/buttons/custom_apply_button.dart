import 'package:flutter/material.dart';
import 'package:furry_care/core/constants/colors.dart';
import 'package:furry_care/core/constants/text_style.dart';

class CustomApplyButton extends StatelessWidget {
  final String text;
  final VoidCallback ontap;
  const CustomApplyButton({super.key, required this.text, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 40,
        decoration: BoxDecoration(
            color: borderColor, borderRadius: BorderRadius.circular(15)),
        child: Center(
          child: Text(
            text,
            style: style14.copyWith(color: whiteColor),
          ),
        ),
      ),
    );
  }
}
