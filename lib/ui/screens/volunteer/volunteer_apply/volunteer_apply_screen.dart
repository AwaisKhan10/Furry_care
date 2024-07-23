// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:furry_care/core/constants/app_assets.dart';
import 'package:furry_care/core/constants/colors.dart';
import 'package:furry_care/core/constants/text_style.dart';
import 'package:furry_care/core/other/screen_utils.dart';
import 'package:furry_care/ui/custom_widgets/buttons/custom_apply_button.dart';
import 'package:furry_care/ui/screens/volunteer/events/event_view_model.dart';
import 'package:furry_care/ui/screens/volunteer/volunteer_form/volunteer_form_screen.dart';
import 'package:get/route_manager.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class VolunteerApply extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('MM/dd/yyyy').format(DateTime.now());

    return ChangeNotifierProvider(
      create: (BuildContext context) => EventViewModel(),
      child: Consumer(
        builder: (BuildContext context, model, Widget? child) {
          return Scaffold(
            body: SingleChildScrollView(
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: MediaQuery.of(context).size.height,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: double.infinity,
                          height: MediaQuery.sizeOf(context).height * 0.3,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    AppAssets.img5,
                                  ),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(height: 16.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Volunteer at animal shelter',
                              style: style14,
                            ),
                            Container(
                                padding: const EdgeInsets.all(5),
                                margin: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: borderColor),
                                    shape: BoxShape.circle),
                                child: Image.asset(
                                  AppAssets.heart,
                                  scale: 3,
                                )),
                          ],
                        ),
                        SizedBox(height: 16.h),
                        FractionallySizedBox(
                          widthFactor: 0.7,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(AppAssets.calender),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(formattedDate)
                                ],
                              ),
                              Row(
                                children: [
                                  Image.asset(AppAssets.time),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(formattedDate)
                                ],
                              ),
                              Image.asset(AppAssets.following),
                            ],
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          'If you’re a vet or vet technician / nurse interested in volunteering with us in Mumbai, we could use your help with managing the medical cases in our clinic. It would be ideal if you’re comfortable working independently and can multitask as well as communicate in a professional manner with members of the community and our staff. ',
                          style: style14.copyWith(fontWeight: FontWeight.w400),
                        ),
                        SizedBox(height: 10.h),
                        Text.rich(TextSpan(
                            text: 'Eligibility: ',
                            style:
                                style12.copyWith(fontWeight: FontWeight.w600),
                            children: [
                              TextSpan(
                                  text: 'Any one can apply', style: style12)
                            ])),
                        SizedBox(height: 32.h),
                        FractionallySizedBox(
                          widthFactor: 0.35,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Rewards',
                                    style: style12.copyWith(
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(height: 12.h),
                                  Image.asset(
                                    AppAssets.badges2,
                                    height: 32,
                                    width: 32,
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Points',
                                    style: style12.copyWith(
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(height: 18.h),
                                  Text(
                                    '200 pts',
                                    style: style12,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            bottomSheet: Padding(
              padding: const EdgeInsets.all(20.0),
              child: CustomApplyButton(
                text: 'Apply for volunteer',
                ontap: () {
                  Get.to(VolunteerFormScreen());
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
