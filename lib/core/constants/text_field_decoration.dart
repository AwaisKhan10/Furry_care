import 'package:flutter/material.dart';
import 'package:furry_care/core/constants/colors.dart';
import 'package:furry_care/core/constants/text_style.dart';
import 'package:furry_care/core/other/screen_utils.dart';

final authFieldDecoration = InputDecoration(
  hintText: "Enter your email",
  hintStyle: style16.copyWith(color: const Color(0xffC6BFBA)),
  prefixIconColor: borderColor,
  suffixIconColor: borderColor,
  fillColor: textFieldFillColor,
  filled: true,
  contentPadding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
  border: InputBorder.none,
  enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: borderColor, width: 1.0),
      borderRadius: BorderRadius.circular(10)),
  focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: borderColor, width: 1.0),
      borderRadius: BorderRadius.circular(10)),
  errorBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: borderColor, width: 1.0),
      borderRadius: BorderRadius.circular(10)),
  disabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: borderColor, width: 1.0),
      borderRadius: BorderRadius.circular(10)),
  focusedErrorBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: borderColor, width: 1.0),
      borderRadius: BorderRadius.circular(10)),
);

final authFieldDecorationMessages = InputDecoration(
  hintText: "Enter your email",
  hintStyle: style14.copyWith(color: blackColor.withOpacity(0.48)),
  prefixIconColor: borderColor,
  suffixIconColor: borderColor,
  fillColor: blackColor.withOpacity(0.02),
  filled: true,
  contentPadding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
  border: InputBorder.none,
  enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: borderColor, width: 1.0),
      borderRadius: BorderRadius.circular(30.r)),
  focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: borderColor, width: 1.0),
      borderRadius: BorderRadius.circular(30.r)),
  errorBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: borderColor, width: 1.0),
      borderRadius: BorderRadius.circular(30.r)),
  disabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: borderColor, width: 1.0),
      borderRadius: BorderRadius.circular(30.r)),
  focusedErrorBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: borderColor, width: 1.0),
      borderRadius: BorderRadius.circular(30.r)),
);

final authFieldDecorationlightBorder = InputDecoration(
  hintText: "Enter your email",
  hintStyle: style16.copyWith(color: borderColor.withOpacity(0.29)),
  prefixIconColor: borderColor,
  suffixIconColor: borderColor,
  fillColor: Colors.transparent,
  filled: true,
  contentPadding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
  border: InputBorder.none,
  enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: dividerColor, width: 1.0),
      borderRadius: BorderRadius.circular(10)),
  focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: dividerColor, width: 1.0),
      borderRadius: BorderRadius.circular(10)),
  errorBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: dividerColor, width: 1.0),
      borderRadius: BorderRadius.circular(10)),
  disabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: dividerColor, width: 1.0),
      borderRadius: BorderRadius.circular(10)),
  focusedErrorBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: dividerColor, width: 1.0),
      borderRadius: BorderRadius.circular(10)),
);
