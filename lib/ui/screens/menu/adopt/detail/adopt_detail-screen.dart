// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:furry_care/core/constants/app_assets.dart';
import 'package:furry_care/core/constants/colors.dart';
import 'package:furry_care/core/constants/text_style.dart';
import 'package:furry_care/core/model/adopt_gridview.dart';
import 'package:furry_care/core/other/screen_utils.dart';
import 'package:furry_care/ui/custom_widgets/buttons/custom_button.dart';
import 'package:furry_care/ui/screens/ask_a_vet/chat_screen.dart';
import 'package:furry_care/ui/screens/menu/adopt/adopt_view_model.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class AdoptDetailScreen extends StatelessWidget {
  AdoptGridView listAdopt;

  AdoptDetailScreen({super.key, required this.listAdopt});

  @override
  Widget build(BuildContext context) {
    return Consumer<AdoptionViewModel>(
        builder: (context, model, child) => Scaffold(
              body: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ///
                    /// Image
                    ///
                    Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          height: MediaQuery.sizeOf(context).height * 0.40,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("${listAdopt.image}"),
                                  fit: BoxFit.cover)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15.0, right: 15.0, top: 40.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  Get.back();
                                },
                                child: Icon(
                                  Icons.arrow_back,
                                  size: 20.sp,
                                  color: borderColor,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.all(10),
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: borderColor, width: 1),
                                    shape: BoxShape.circle),
                                child: Image.asset(
                                  AppAssets.favourite,
                                  color: borderColor,
                                  scale: 3,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: SizedBox(
                        height: 60.h,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.all(10),
                                width: 44.w,
                                height: 44.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6.r),
                                    border: Border.all(
                                        width: 1.0, color: borderColor),
                                    image: DecorationImage(
                                        image: AssetImage("${listAdopt.image}"),
                                        fit: BoxFit.cover)),
                              );
                            }),
                      ),
                    ),

                    ///
                    ///
                    ///
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10),
                      child: Text(
                        "Fluffy",
                        style: style23,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text: "Breed - ",
                                    style: style14.copyWith(
                                      color: blackColor,
                                    )),
                                TextSpan(
                                  text: "Spitz",
                                  style: styleNormal14.copyWith(
                                    color: blackColor,
                                  ),
                                ),
                              ])),
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text: "Gender - ",
                                    style: style14.copyWith(
                                      color: blackColor,
                                    )),
                                TextSpan(
                                  text: "Female",
                                  style: styleNormal14.copyWith(
                                    color: blackColor,
                                  ),
                                ),
                              ])),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text: "Age - ",
                                    style: style14.copyWith(
                                      color: blackColor,
                                    )),
                                TextSpan(
                                  text: "1 years",
                                  style: styleNormal14.copyWith(
                                    color: blackColor,
                                  ),
                                ),
                              ])),
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text: "Vaccinated - ",
                                    style: style14.copyWith(
                                      color: blackColor,
                                    )),
                                TextSpan(
                                  text: "Yes",
                                  style: styleNormal14.copyWith(
                                    color: blackColor,
                                  ),
                                ),
                              ])),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10),
                      child: Text(
                        "My Info",
                        style: style20,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _myInfo(text: "Shots up to date"),
                          _myInfo(text: "Good with kids"),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _myInfo(text: "Needs loving adopter"),
                          _myInfo(text: "Good with cats"),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),

                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: CustomButton(
                        onTap: () {
                          // Get.to(page)
                        },
                        text: 'Adopt me',
                        textColor: whiteColor,
                        buttonColor: borderColor,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                    ),

                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: CustomButton(
                              onTap: () {
                                Get.to(MessagesScreen());
                              },
                              text: 'Message',
                              textColor: borderColor,
                              buttonColor: Colors.transparent,
                              border:
                                  Border.all(width: 1.0, color: borderColor),
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Container(
                            padding: EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                border:
                                    Border.all(width: 1, color: borderColor),
                                borderRadius: BorderRadius.circular(8.r)),
                            child: Center(
                              child: Image.asset(
                                AppAssets.call,
                                scale: 4.5,
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ));
  }
}

Row _myInfo({required String text}) {
  return Row(
    children: [
      Icon(
        Icons.check,
        color: borderColor,
        size: 20.sp,
      ),
      SizedBox(
        width: 10.w,
      ),
      Text(
        "$text",
        style: styleNormal14,
      ),
    ],
  );
}
