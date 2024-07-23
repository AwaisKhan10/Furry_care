// ignore_for_file: use_key_in_widget_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:furry_care/core/constants/app_assets.dart';
import 'package:furry_care/core/constants/colors.dart';
import 'package:furry_care/core/constants/text_style.dart';
import 'package:furry_care/core/other/screen_utils.dart';
import 'package:furry_care/ui/custom_widgets/buttons/custom_button.dart';

class OrderCompleteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: const Color(0xffF2F2F2),
        backgroundColor: const Color(0xffF2F2F2),
        toolbarHeight: 30,
      ),

      ///
      ///body start
      ///
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Image.asset(
                AppAssets.congartsOrder,
                scale: 3,
              )),
              Center(
                child: Text(
                  "Thanyou for your order",
                  style: style16b.copyWith(fontSize: 20),
                ),
              ),
              Center(
                child: Text(
                  "The order detail has been sent to your email id",
                  style: styleNormal14,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              _selectoption("Transaction Date", "Friday,June 7,2024"),
              _selectoption("Payment method", "UPI"),
              _selectoption("Delivery Method", "Offline"),
              const SizedBox(
                height: 15,
              ),
              _cartContainer(),

              const SizedBox(
                height: 15,
              ),

              ///
              /// Sub Total container
              ///
              _SubTotalContainer(),

              ///
              ///explore button
              ///
              const SizedBox(
                height: 25,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                      color: borderColor,
                      borderRadius: BorderRadius.circular(15.r)),
                  child: const CustomButton(
                    text: "Continue to explore",
                    textColor: whiteColor,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Container _selectoption(title, subtitle) {
  return Container(
    //alignment: Alignment.center,
    padding: const EdgeInsets.all(12),
    decoration:
        BoxDecoration(border: Border.all(color: borderColor, width: 0.2)),
    child: Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: styleNormal14,
            ),
            Text(
              subtitle,
              style: style12.copyWith(color: greyColor),
            )
          ],
        ),
      ],
    ),
  );
}

Container _cartContainer() {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
    decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(color: borderColor, width: 0.2)),
    child: Column(
      children: [
        _total("Pet grooming course", "\$100"),
        SizedBox(
          height: 10.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  color: startColor,
                  size: 16.sp,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    '4.7',
                    style: style14.copyWith(color: borderColor),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 1.0, horizontal: 10.0),
                  decoration: BoxDecoration(
                      color: accentColor,
                      border: Border.all(width: 1, color: greyColor)),
                  child: Text(
                    'Best Seller',
                    style: style10,
                  ),
                ),
              ],
            ),
            Text(
              'Remove',
              style: style14.copyWith(fontWeight: FontWeight.normal),
            ),
          ],
        ),
        SizedBox(
          height: 5.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _detail(imgIcon: AppAssets.play, text: '24 videos', scale: 5.0),
            SizedBox(
              width: 10.w,
            ),
            _detail(imgIcon: AppAssets.timer, text: '2 hours', scale: 5.0),
            SizedBox(
              width: 10.w,
            ),
            _detail(
                imgIcon: AppAssets.person, text: '245 Enrolled', scale: 5.0),
          ],
        ),
      ],
    ),
  );
}

_detail(
    {required String text, required String imgIcon, required double scale}) {
  return Row(
    children: [
      Image.asset(
        imgIcon,
        scale: scale,
        color: borderColor,
      ),
      SizedBox(
        width: 3.w,
      ),
      Text(
        text,
        style: style10,
      ),
    ],
  );
}

Row _total(title, money) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style: style14.copyWith(color: borderColor),
      ),
      Text(
        money,
        style: style14.copyWith(color: borderColor),
      )
    ],
  );
}

Container _SubTotalContainer() {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
    decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(color: borderColor, width: 0.2)),
    child: Column(
      children: [
        ///
        ///total
        ///
        _total("Subtotal", "\$799"),
        const SizedBox(
          height: 10,
        ),
        _total("Discount", "\$0"),
        const SizedBox(
          height: 10,
        ),

        _total("Shipment cost", "\$100"),
        const SizedBox(
          height: 10,
        ),
        const Divider(
          thickness: 2.0,
          color: dividerColor,
        ),
        const SizedBox(
          height: 10,
        ),
        _total("Total", "\$100"),
      ],
    ),
  );
}
