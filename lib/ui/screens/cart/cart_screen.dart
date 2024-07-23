import 'package:flutter/material.dart';
import 'package:furry_care/core/constants/colors.dart';
import 'package:furry_care/core/constants/text_style.dart';
import 'package:furry_care/core/other/screen_utils.dart';
import 'package:furry_care/ui/screens/cart/cart_view_model.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartViewModel(),
      child: Consumer<CartViewModel>(
        builder: (context, viewModel, child) => Scaffold(
          backgroundColor: whiteColor,

          ///
          /// Body
          ///
          body: Column(
            children: [
              _header(),
              Expanded(
                  child: viewModel.cartItems.isNotEmpty &&
                          viewModel.cartItems != null
                      ? ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          itemCount: viewModel.cartItems.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            final item = viewModel.cartItems[index];
                            return Container(
                              decoration: BoxDecoration(
                                  color: accentColor,
                                  borderRadius: BorderRadius.circular(6.r),
                                  boxShadow: [
                                    BoxShadow(
                                        color: blackColor.withOpacity(0.25),
                                        offset: const Offset(0, 4),
                                        spreadRadius: 0,
                                        blurRadius: 4)
                                  ]),
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 8.0),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 60.h,
                                          width: 60.w,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8.r),
                                              image: DecorationImage(
                                                  image:
                                                      AssetImage(item.imageUrl),
                                                  fit: BoxFit.cover)),
                                        ),
                                        const SizedBox(width: 16.0),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(item.name, style: style16b),
                                            Text(
                                              '\$${item.price}',
                                              style: styleNormal14,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        IconButton(
                                          onPressed: () {
                                            viewModel.decrementQuantity(index);
                                          },
                                          icon: Icon(
                                            Icons.remove,
                                            size: 18.sp,
                                          ),
                                        ),
                                        Text(
                                          item.quantity.toString(),
                                          style: style16b,
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            viewModel.incrementQuantity(index);
                                          },
                                          icon: Icon(
                                            Icons.add,
                                            size: 18.sp,
                                          ),
                                        ),
                                      ],
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        viewModel.deleteItem(index);
                                      },
                                      icon: const Icon(Icons.delete,
                                          color: borderColor),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        )
                      : Center(
                          child: Text(
                            "Cart is Empty",
                            style: style16b,
                          ),
                        ))
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
          "Cart",
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
