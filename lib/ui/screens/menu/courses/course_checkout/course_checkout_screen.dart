// ignore_for_file: sort_child_properties_last, use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:furry_care/core/constants/app_assets.dart';
import 'package:furry_care/core/constants/colors.dart';
import 'package:furry_care/core/constants/text_field_decoration.dart';
import 'package:furry_care/core/constants/text_style.dart';
import 'package:furry_care/core/other/screen_utils.dart';
import 'package:furry_care/ui/custom_widgets/buttons/custom_button.dart';
import 'package:furry_care/ui/screens/menu/courses/course_checkout/course_checkout_view_model.dart';
import 'package:furry_care/ui/screens/menu/courses/order_compelte/order_compelte_screen.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class CourseCheckoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CourseCheckoutViewModel(),
      child: Consumer<CourseCheckoutViewModel>(
        builder: (context, model, child) => Scaffold(
          backgroundColor: whiteColor,

          ///
          ///app bar
          ///
          appBar: AppBar(
            surfaceTintColor: const Color(0xffF2F2F2),
            backgroundColor: whiteColor,
            // backgroundColor: accentColor,
            centerTitle: true,
            title: Text(
              "Couses Checkout",
              style: style16b.copyWith(fontSize: 20),
            ),
          ),

          ///
          ///body start
          ///
          ///
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  ///
                  ///cart container
                  ///
                  _cartContainer(),
                  const SizedBox(
                    height: 15,
                  ),

                  ///
                  ///rate container
                  ///
                  _rateContainer(),
                  const SizedBox(
                    height: 15,
                  ),

                  ///
                  ///
                  ///
                  /// Payment Menthod
                  ///
                  ///
                  ///
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(width: 0.2, color: borderColor)),
                    child: Column(
                      children: [
                        _radioList(
                          title: 'Credit card',
                          value: 'credit_card',
                          groupValue: model.selectedPaymentMethod,
                          onChanged: model.onClick,
                        ),
                        model.selectedPaymentMethod == 'credit_card'
                            ? Padding(
                                padding: const EdgeInsets.only(
                                    left: 70.0, right: 20, bottom: 5),
                                child: TextFormField(
                                  decoration: authFieldDecorationlightBorder
                                      .copyWith(hintText: 'Credit Card ID'),
                                ),
                              )
                            : const SizedBox(),
                        const Divider(
                          color: dividerColor,
                          thickness: 2.0,
                        ),
                        _radioList(
                          title: 'Net banking',
                          value: 'net_banking',
                          groupValue: model.selectedPaymentMethod,
                          onChanged: model.onClick,
                        ),
                        model.selectedPaymentMethod == 'net_banking'
                            ? Padding(
                                padding: const EdgeInsets.only(
                                    left: 70.0, right: 20, bottom: 5),
                                child: TextFormField(
                                  decoration: authFieldDecorationlightBorder
                                      .copyWith(hintText: 'Credit Card ID'),
                                ),
                              )
                            : const SizedBox(),
                        const Divider(
                          color: dividerColor,
                          thickness: 2.0,
                        ),
                        _radioList(
                          title: 'UPI',
                          value: 'upi',
                          groupValue: model.selectedPaymentMethod,
                          onChanged: model.onClick,
                        ),
                        model.selectedPaymentMethod == 'upi'
                            ? Padding(
                                padding: const EdgeInsets.only(
                                    left: 70.0, right: 20, bottom: 5),
                                child: TextFormField(
                                  decoration: authFieldDecorationlightBorder
                                      .copyWith(hintText: 'Enter UPI ID'),
                                ),
                              )
                            : const SizedBox(),
                      ],
                    ),
                  ),
                  // ///
                  // ///option container
                  // ///

                  SizedBox(
                    width: 40.h,
                  ),

                  ///
                  ///Order Screen Button
                  ///
                  CustomButton(
                    onTap: () {
                      Get.to(OrderCompleteScreen());
                    },
                    borderRadius: BorderRadius.circular(10),
                    buttonColor: borderColor,
                    textColor: whiteColor,
                    text: 'Place your order',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  ///
  /// Widgets
  ///

  Container _rateContainer() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      decoration: BoxDecoration(
          color: whiteColor,
          border: Border.all(color: borderColor, width: 0.2)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ///
              ///coupon textfeild
              ///
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: TextFormField(
                    decoration: authFieldDecorationlightBorder.copyWith(
                        hintText: 'Apply coupon code'),
                  ),
                ),
              ),

              ///
              ///apply button
              ///
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: Text(
                  "Apply",
                  style: style16,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: borderColor),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),

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

  Container _addressContainer() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      decoration: BoxDecoration(
          color: whiteColor,
          border: Border.all(color: borderColor, width: 0.2)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Select Address",
            style: style16b,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Plot No. 176 ,Shop 3, Lakshmi Darshan, Sector 21, Kamothe,Khandeshhwar, Panvel, Navi Mumbai, Maharashtra 410209",
            style: styleNormal14,
          )
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

  Widget _radioList({
    required String title,
    required String value,
    required String? groupValue,
    required ValueChanged<String?> onChanged,
  }) {
    return RadioListTile<String>(
      title: Text(title),
      value: value,
      hoverColor: borderColor,
      activeColor: borderColor,
      groupValue: groupValue,
      onChanged: onChanged,
    );
  }
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
