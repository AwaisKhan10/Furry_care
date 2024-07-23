// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:furry_care/core/constants/colors.dart';
import 'package:furry_care/core/constants/text_style.dart';
import 'package:furry_care/core/model/adopt_categories.dart';
import 'package:furry_care/core/other/screen_utils.dart';

class CustomAdoptCategories extends StatelessWidget {
  AdoptCategories adoptCategories;
  CustomAdoptCategories({required this.adoptCategories});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          height: 71.h,
          width: 71.w,
          decoration: BoxDecoration(
              border: Border.all(width: 1.0, color: borderColor),
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage("${adoptCategories.imgUrl}"),
                  fit: BoxFit.cover)),
        ),
        Text(
          "${adoptCategories.name}",
          style: style14.copyWith(fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
