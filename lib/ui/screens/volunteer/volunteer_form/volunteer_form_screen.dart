// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furry_care/core/constants/text_style.dart';
import 'package:furry_care/ui/custom_widgets/buttons/custom_apply_button.dart';
import 'package:furry_care/ui/custom_widgets/custom_text_filed.dart';
import 'package:furry_care/ui/screens/volunteer/volunteer_thank_you/than_you_screen.dart';
import 'package:get/route_manager.dart';

class VolunteerFormScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Column(
              children: [
                Text(
                  'Application Form',
                  style: styleNormal16,
                ),
                SizedBox(
                  height: 21.h,
                ),
                const VolunteerTextfield(title: 'Name', hint: 'Name'),
                SizedBox(
                  height: 16.h,
                ),
                const VolunteerTextfield(title: 'Email ID', hint: 'Email ID'),
                SizedBox(
                  height: 16.h,
                ),
                const VolunteerTextfield(
                    title: 'Date of Birth', hint: 'Date of Birth'),
                SizedBox(
                  height: 16.h,
                ),
                const VolunteerTextfield(title: 'Address', hint: 'Address'),
                SizedBox(
                  height: 16.h,
                ),
                const VolunteerTextfield(
                    title: 'Mobile No.', hint: 'Mobile No.'),
                SizedBox(
                  height: 16.h,
                ),
                const VolunteerTextfield(
                    title: 'Past Volunteering Experience',
                    hint: 'Past Volunteering Experience'),
                SizedBox(
                  height: 100.h,
                ),
                CustomApplyButton(
                    text: 'Register',
                    ontap: () {
                      Get.to(const VolunteerThankYou());
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
