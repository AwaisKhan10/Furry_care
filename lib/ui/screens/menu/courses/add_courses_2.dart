// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:furry_care/core/constants/colors.dart';
import 'package:furry_care/core/constants/text_field_decoration.dart';
import 'package:furry_care/core/constants/text_style.dart';
import 'package:furry_care/core/other/screen_utils.dart';
import 'package:furry_care/ui/custom_widgets/buttons/custom_apply_button.dart';

class AddCourses2 extends StatelessWidget {
  get style20 => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            _header(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 29),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Courses Content",
                        style: styleNormal16.copyWith(fontSize: 14),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      TextFormField(
                        maxLines: 6,
                        decoration: authFieldDecorationlightBorder.copyWith(
                            hintText: "Content"),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Courses Requirement",
                        style: styleNormal16.copyWith(fontSize: 14),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      TextFormField(
                        maxLines: 6,
                        decoration: authFieldDecorationlightBorder.copyWith(
                            hintText: "Requirement"),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Add Prize",
                        style: styleNormal16.copyWith(fontSize: 14),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      TextFormField(
                        decoration: authFieldDecorationlightBorder.copyWith(
                            hintText: "Prize"),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 60.h,
                  ),
                  CustomApplyButton(text: 'Publish', ontap: () {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

_header() {
  return Container(
    alignment: Alignment.center,
    padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0.0),
    width: double.infinity,
    height: 80.h,
    decoration: BoxDecoration(color: accentColor, boxShadow: [
      BoxShadow(
          color: blackColor.withOpacity(0.25),
          offset: const Offset(0, 4),
          spreadRadius: 0,
          blurRadius: 4)
    ]),
    child: Text(
      "Add Courses",
      style: style16b.copyWith(color: blackColor, fontSize: 20.sp),
    ),
  );
}
