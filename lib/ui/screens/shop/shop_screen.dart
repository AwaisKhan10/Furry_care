// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'package:furry_care/core/constants/app_assets.dart';
import 'package:furry_care/core/constants/colors.dart';
import 'package:furry_care/core/constants/text_style.dart';
import 'package:furry_care/core/other/screen_utils.dart';
import 'package:furry_care/ui/custom_widgets/custom_all_products.dart';
import 'package:furry_care/ui/screens/cart/cart_screen.dart';
import 'package:furry_care/ui/screens/notifications/notification_screens.dart';

import 'package:furry_care/ui/screens/shop/shop_view_model.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:provider/provider.dart';

class ShopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ShopViewModel(),
      child: Consumer<ShopViewModel>(
        builder: (context, model, child) => Scaffold(
          ///
          /// Start Body
          ///
          body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              _header(),

              ///
              ///special offer
              ///
              text_method("Special Offers"),

              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                height: 130.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          AppAssets.special_offer,
                        ),
                        fit: BoxFit.cover)),
              ),

              ///
              ///best seller products
              ///
              text_method("Best Seller Products"),

              ///
              ///list view data
              ///
              const SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 112,
                  child: ListView.builder(
                      itemCount: model.list_shopdata.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return best_seller_products(model, index);
                      }),
                ),
              ),

              ///
              ///all products
              ///
              text_method("All products"),

              ///
              ///grid view
              ///
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: CustomAllProducts(),
              ),
            ]),
          ),
        ),
      ),
    );
  }

  Stack best_seller_products(ShopViewModel model, int index) {
    return Stack(
      children: [
        Container(
          width: 99,
          height: 94,
          //width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              color: blackColor.withOpacity(0.10),
              borderRadius: BorderRadius.circular(12)),
          child: Image.asset("${model.list_shopdata[index].imgUrl}"),
        ),
        Positioned(
          bottom: 10,
          left: 11,
          child: Container(
            padding: const EdgeInsets.all(2.5),
            color: accentColor,
            child: Text(
              "${model.list_shopdata[index].title}",
              style: style12,
            ),
          ),
        )
      ],
    );
  }

  Padding text_method(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 21),
      child: Text(title, style: style14),
    );
  }
}

_header() {
  return Container(
    alignment: Alignment.center,
    padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0.0),
    width: double.infinity,
    height: 117.h,
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
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome Rishyanth",
              style: style14,
            ),
            Text(
              "Mumbai",
              style: style14,
            )
          ],
        ),
        Row(
          children: [
            InkWell(
              onTap: () {
                Get.to(CartScreen());
              },
              child: Image.asset(
                AppAssets.orders,
                scale: 3,
              ),
            ),
            SizedBox(
              width: 15.w,
            ),
            InkWell(
              onTap: () {
                Get.to(NotificationScreen());
              },
              child: Image.asset(
                AppAssets.notifications,
                scale: 4.5,
              ),
            ),
          ],
        )
      ],
    ),
  );
}
