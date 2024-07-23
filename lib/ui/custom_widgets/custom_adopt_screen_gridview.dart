import 'package:flutter/material.dart';
import 'package:furry_care/core/constants/app_assets.dart';
import 'package:furry_care/core/constants/colors.dart';
import 'package:furry_care/core/model/adopt_gridview.dart';

class CustomAdoptionGridView extends StatelessWidget {
  AdoptGridView listadoptGridView;
  CustomAdoptionGridView({super.key, required this.listadoptGridView});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xffEEEEEE),
          borderRadius: BorderRadius.circular(15)),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Image.asset("${listadoptGridView.image}"),
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                border: Border.all(color: borderColor, width: 1),
                shape: BoxShape.circle),
            child: Image.asset(
              AppAssets.favourite,
              color: borderColor,
              scale: 3,
            ),
          )
        ],
      ),
    );
  }
}
