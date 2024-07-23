// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, unused_element

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:furry_care/core/constants/colors.dart';
import 'package:furry_care/core/constants/text_style.dart';
import 'package:furry_care/core/other/screen_utils.dart';
import 'package:furry_care/ui/custom_widgets/custom_adopt_categories.dart';
import 'package:furry_care/ui/custom_widgets/custom_adopt_screen_gridview.dart';
import 'package:furry_care/ui/screens/menu/adopt/adopt_view_model.dart';
import 'package:furry_care/ui/screens/menu/adopt/detail/adopt_detail-screen.dart';
import 'package:get/get.dart';

import 'package:provider/provider.dart';

class AdoptionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AdoptionViewModel(),
      child: Consumer<AdoptionViewModel>(
        builder: (context, model, child) => Scaffold(
          backgroundColor: whiteColor,

          ///
          /// App Bar
          ///
          appBar: _apppBar(),

          ///
          /// Start Body
          ///
          ///
          body: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: SizedBox(
                    height: 100.h,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: model.listCategories.length,
                      itemBuilder: (BuildContext context, int index) {
                        return CustomAdoptCategories(
                          adoptCategories: model.listCategories[index],
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                MasonryGridView.builder(
                    shrinkWrap: true,
                    itemCount: model.listGridview.length,
                    gridDelegate:
                        const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () => Get.to(AdoptDetailScreen(
                              listAdopt: model.listGridview[index])),
                          child: CustomAdoptionGridView(
                              listadoptGridView: model.listGridview[index]),
                        ),
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}

AppBar _apppBar() {
  return AppBar(
    surfaceTintColor: whiteColor,
    shadowColor: whiteColor,
    backgroundColor: whiteColor,
    elevation: 0,
    automaticallyImplyLeading: true,
    centerTitle: true,
    title: Text(
      'Adaptation a Pet',
      style: style20,
    ),
    actions: [
      IconButton(
        icon: Icon(
          Icons.search,
          size: 20.sp,
          color: blackColor,
        ),
        onPressed: () {},
      ),
    ],
  );
}
