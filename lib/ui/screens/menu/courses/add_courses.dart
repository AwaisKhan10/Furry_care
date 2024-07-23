// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:furry_care/core/constants/app_assets.dart';
import 'package:furry_care/core/constants/colors.dart';
import 'package:furry_care/core/constants/text_style.dart';
import 'package:furry_care/core/other/screen_utils.dart';
import 'package:furry_care/ui/custom_widgets/buttons/custom_apply_button.dart';
import 'package:furry_care/ui/custom_widgets/custom_event_info.dart';
import 'package:furry_care/ui/screens/menu/courses/add_courses_2.dart';
import 'package:get/get.dart';

class AddCourses extends StatelessWidget {
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
                  Container(
                    height: 168,
                    decoration:
                        BoxDecoration(color: blackColor.withOpacity(0.05)),
                    child: Center(
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Text(
                            'Upload Picture',
                            style: style12,
                          ),
                          InkWell(
                            child: Container(
                              height: 64,
                              width: 64,
                              decoration: BoxDecoration(
                                  color: blackColor.withOpacity(0.04),
                                  borderRadius: BorderRadius.circular(64),
                                  border: Border.all(color: borderColor)),
                              child: Image.asset(AppAssets.upload),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  InkWell(
                    child: Container(
                      height: 39,
                      decoration:
                          BoxDecoration(border: Border.all(color: borderColor)),
                      child: const Center(child: Text('Upload +')),
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  const EventInfo(
                    title: 'Event Title',
                    hint: 'Title',
                    height: 40,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  const EventInfo(
                    title: 'Description',
                    hint: 'Description',
                    height: 107,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: EventInfo(
                          title: 'Date',
                          hint: '12/2/2024',
                          height: 40,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: EventInfo(
                          title: 'Time',
                          hint: '10:00 AM',
                          height: 40,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  const EventInfo(
                    title: 'Address',
                    hint: 'Address',
                    height: 107,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  CustomApplyButton(
                    text: 'Next',
                    ontap: () {
                      Get.to(AddCourses2());
                    },
                  )
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
