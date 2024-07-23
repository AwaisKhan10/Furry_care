// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:furry_care/core/constants/colors.dart';
import 'package:furry_care/core/constants/text_style.dart';
import 'package:furry_care/core/other/screen_utils.dart';
import 'package:furry_care/ui/screens/wishlist/wishlist_view_model.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class WishlistScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WishlistViewModel(),
      child: Consumer<WishlistViewModel>(
        builder: (context, value, child) => Scaffold(
          backgroundColor: whiteColor,
          body: Column(
            children: [
              _header(),
              Expanded(
                child: Center(
                  child: Text(
                    "Wishlist is Empty",
                    style: style16.copyWith(color: blackColor),
                  ),
                ),
              ),
            ],
          ),
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
    height: 90.h,
    decoration: BoxDecoration(color: accentColor, boxShadow: [
      BoxShadow(
          color: blackColor.withOpacity(0.25),
          offset: const Offset(0, 4),
          spreadRadius: 0,
          blurRadius: 4)
    ]),
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
            size: 24.sp,
            color: blackColor,
          ),
        ),
        Text(
          "Wishlist",
          style: style16b.copyWith(color: blackColor, fontSize: 20.sp),
        ),
        Text(
          "    ",
          style: style14,
        ),
      ],
    ),
  );
}
