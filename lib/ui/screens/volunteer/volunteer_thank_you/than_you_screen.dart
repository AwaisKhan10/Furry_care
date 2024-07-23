import 'package:flutter/material.dart';
import 'package:furry_care/core/constants/app_assets.dart';
import 'package:furry_care/core/constants/text_style.dart';
import 'package:furry_care/core/other/screen_utils.dart';
import 'package:furry_care/ui/custom_widgets/buttons/custom_apply_button.dart';

class VolunteerThankYou extends StatelessWidget {
  const VolunteerThankYou({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(AppAssets.thank),
              SizedBox(
                height: 16.h,
              ),
              Text(
                'We will send you all the details on registered Email ID',
                style: style23.copyWith(fontSize: 20.sp),
              ),
              SizedBox(
                height: 51.h,
              ),
              CustomApplyButton(text: 'Continue Exploring', ontap: () {})
            ],
          ),
        ),
      ),
    );
  }
}
