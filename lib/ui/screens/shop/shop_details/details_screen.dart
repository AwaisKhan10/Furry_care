// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, avoid_unnecessary_containers, avoid_print, duplicate_ignore, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:furry_care/core/constants/colors.dart';
import 'package:furry_care/core/constants/text_style.dart';
import 'package:furry_care/core/model/shop_data.dart';
import 'package:furry_care/core/other/screen_utils.dart';
import 'package:furry_care/ui/custom_widgets/buttons/custom_button.dart';
import 'package:furry_care/ui/screens/shop/buynow/cart_screen.dart';
import 'package:furry_care/ui/screens/shop/shop_details/detail_view_model.dart';

import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:provider/provider.dart';

class ShopDetailScreen extends StatelessWidget {
  ShopData shopData;
  ShopDetailScreen({required this.shopData});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ShopDetailViewModel(),
      child: Consumer<ShopDetailViewModel>(
        builder: (context, model, child) => Scaffold(
          //backgroundColor: whiteColor,
          backgroundColor: accentColor,
          appBar: AppBar(
            backgroundColor: accentColor,
            toolbarHeight: 30,
          ),

          ///
          /// Start Body
          ///
          body: SingleChildScrollView(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ///
                /// header
                ///
                ImageSlideshow(
                  /// Width of the [ImageSlideshow].
                  width: double.infinity,

                  /// Height of the [ImageSlideshow].
                  height: 300,

                  /// The page to show when first creating the [ImageSlideshow].
                  initialPage: 0,

                  /// The color to paint the indicator.
                  indicatorColor: borderColor,

                  /// The color to paint behind th indicator.
                  indicatorBackgroundColor: const Color(0xffF1E4DD),
                  indicatorRadius: 5.0,

                  /// The widgets to display in the [ImageSlideshow].
                  /// Add the sample image file into the images folder
                  // ignore: sort_child_properties_last
                  children: [
                    Image.asset(
                      '${shopData.imgUrl}',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      '${shopData.imgUrl}',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      '${shopData.imgUrl}',
                      fit: BoxFit.cover,
                    ),
                  ],

                  /// Called whenever the page in the center of the viewport changes.
                  onPageChanged: (value) {
                    print('Page changed: $value');
                  },

                  /// Auto scroll interval.
                  /// Do not auto scroll with null or 0.
                  autoPlayInterval: 3000,

                  /// Loops back to first slide.
                  isLoop: true,
                ),

                ///
                ///container with different color from scafoled
                ///
                Container(
                  padding: const EdgeInsets.only(top: 8),
                  decoration: const BoxDecoration(
                      color: accentColor,
                      // ignore: unnecessary_const
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("In Stock",
                                style: style12.copyWith(
                                  color: borderColor,
                                )),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Shop ratings",
                                  style: styleNormal14,
                                ),
                                Row(
                                  children: [
                                    _rating_bar(1),
                                    Text("${shopData.rating}"),
                                    Text("(${shopData.subrating})")
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),

                      ///
                      ///title
                      ///
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("${shopData.title}", style: style16b),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "${shopData.description}",
                              style: styleNormal14.copyWith(color: borderColor),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text("₹", style: style16b),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "${shopData.price}",
                                  style: style16b,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),

                            ///
                            ///Buy now button
                            ///
                            GestureDetector(
                              onTap: () {
                                Get.to(ProductCheckout(
                                  listshopData: shopData,
                                ));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: borderColor,
                                    borderRadius: BorderRadius.circular(15.r)),
                                child: const CustomButton(
                                  text: "Buy Now",
                                  textColor: whiteColor,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),

                            ///
                            ///add to cart button
                            ///

                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.r),
                                    border: Border.all(color: borderColor)),
                                child: const CustomButton(
                                  text: "Add to cart",
                                  textColor: borderColor,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Item Reviews",
                              style: style14,
                            ),
                            const SizedBox(
                              height: 10,
                            ),

                            ///
                            ///rating bar
                            ///
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "${shopData.rating}",
                                          style: style16b,
                                        ),
                                        Container(
                                            child: Row(children: [
                                          _rating_bar(1),
                                        ]))
                                      ],
                                    ),
                                    Text("${shopData.subrating} ratings")
                                  ],
                                ),

                                ///
                                ///data with progress bar
                                ///

                                Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    //mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Item Quality",
                                                    style: style14,
                                                  ),
                                                  Text(
                                                    "Delivery",
                                                    style: style14,
                                                  ),
                                                  Text(
                                                    "Custom Services",
                                                    style: style14,
                                                  ),
                                                ])
                                          ]),
                                      Column(children: [
                                        _progressbar(0.7, "4.7"),
                                        _progressbar(0.3, "4.3"),
                                        _progressbar(0.5, "4.5"),
                                      ])
                                    ]),

                                ///
                                ///data with progress bar
                                ///
                                // Column(
                                //   crossAxisAlignment:
                                //       CrossAxisAlignment.start,
                                //   //mainAxisAlignment: MainAxisAlignment.start,
                                //   children: [
                                //     _progressbar("Item quantity", 0.7, "4.7"),
                                //     _progressbar("Delivery", 0.3, "4.3"),
                                //     _progressbar(
                                //         "Customer service", 0.5, "4.5"),
                                //   ],
                                // ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      // SizedBox(height: 200, width: 200, child: ReviewScreen())
                    ],
                  ),
                ),
                SizedBox(
                  //width: 289,
                  height: 180,
                  child: ListView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 300,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 20),
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: accentColor,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.25),
                                    spreadRadius: 0,
                                    offset: const Offset(0.0, 2.0),
                                    blurRadius: 4),
                              ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Mansi",
                                style: style14,
                              ),
                              _rating_bar(5),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Amazing! Just like the picture and the seller is super friendly.",
                                style: style16b,
                              ),
                            ],
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row _progressbar(percent, rating) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        LinearPercentIndicator(
          barRadius: const Radius.circular(12),
          lineHeight: 10,
          percent: percent,
          width: 100,
          progressColor: borderColor,
          backgroundColor: greyColor,
        ),
        Text(rating)
      ],
    );
  }

  // Row _progressbar(name, percent, rating) {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //     children: [
  //       Text(
  //         name,
  //         style: style14,
  //       ),
  //       LinearPercentIndicator(
  //         barRadius: Radius.circular(12),
  //         lineHeight: 10,
  //         percent: percent,
  //         width: 100,
  //         progressColor: borderColor,
  //         backgroundColor: greyColor,
  //       ),
  //       Text(rating)
  //     ],
  //   );
  // }

  RatingBar _rating_bar(number) {
    return RatingBar.builder(
      initialRating: 5,
      minRating: 0,
      direction: Axis.horizontal,
      allowHalfRating: false,
      itemCount: number,
      itemSize: 20,
      itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: Color(0xffF7871B),
      ),
      onRatingUpdate: (rating) {
        // ignore: avoid_print
        print(rating);
      },
    );
  }
}
