// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'package:flutter/material.dart';

const Color primaryColor = Color(0xffF6DFC9);
const Color secondaryColor = Color(0xffDDB18E);
const Color accentColor = Color(0xffFDF6F0);
const Color textFieldFillColor = Color(0xffF2F2F2);
const Color blackColor = Color(0xFF000000);
const Color whiteColor = Color(0xFFFFFFFF);
const Color dividerColor = Color(0xffE9E7E6);

const Color greyColor = Color(0xFFC6BFBA);
const Color borderColor = Color(0xFF56423D);
const Color challengesBoxColor = Color(0xFFD2B9A3);
const Color startColor = Color(0xFFDAA213);

const Color buttonColor = borderColor;
const Color rootColor = borderColor;
const Color homescreenBoxColor = textFieldFillColor;

const Gradient gradientColor = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [primaryColor, secondaryColor]);

final Decoration HomeSceenContainerdecoration =
    BoxDecoration(color: homescreenBoxColor, boxShadow: [
  BoxShadow(
      color: blackColor.withOpacity(0.10),
      offset: const Offset(0, 2),
      blurRadius: 10,
      spreadRadius: 0)
]);

final Decoration appbarDecoration = BoxDecoration(
  color: accentColor,
  boxShadow: [
    BoxShadow(
      color: Colors.grey.withOpacity(0.5),
      spreadRadius: 1,
      blurRadius: 3,
      offset: const Offset(0, 3),
    ),
  ],
);
