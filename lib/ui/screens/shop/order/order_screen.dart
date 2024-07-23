// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:furry_care/core/constants/app_assets.dart';
import 'package:furry_care/core/constants/colors.dart';
import 'package:furry_care/core/constants/text_style.dart';
import 'package:furry_care/core/model/shop_data.dart';
import 'package:furry_care/core/other/screen_utils.dart';
import 'package:furry_care/ui/custom_widgets/buttons/custom_button.dart';

class OrderScreen extends StatelessWidget {
  final ShopData listshopData;
  const OrderScreen({required this.listshopData});

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

              ///
              ///cart container
              ///
              cartMethod(),
              const SizedBox(
                height: 15,
              ),

              ///
              ///address container
              ///
              _addressContainer(),

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

  Container _addressContainer() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration:
          BoxDecoration(border: Border.all(color: borderColor, width: 0.2)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Shipping Address",
            style: style16b,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Alex M",
            style: styleNormal14,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Plot No. 176 ,Shop 3, Lakshmi Darshan, Sector 21, Kamothe,Khandeshhwar, Panvel, Navi Mumbai, Maharashtra 410209",
            style: styleNormal14,
          ),
        ],
      ),
    );
  }

  Container cartMethod() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration:
          BoxDecoration(border: Border.all(color: borderColor, width: 0.2)),
      child: Row(
        children: [
          Container(
              width: 66,
              height: 66,
              color: greyColor,
              child: Image.asset("${listshopData.imgUrl}")),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${listshopData.title}",
                style: style14,
              ),
              const SizedBox(height: 10),
              Text(
                "${listshopData.price}",
                style: style14,
              )
            ],
          )
        ],
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
