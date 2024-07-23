import 'package:flutter/material.dart';
import 'package:furry_care/core/constants/colors.dart';
import 'package:furry_care/core/constants/text_style.dart';
import 'package:furry_care/core/other/screen_utils.dart';

class EventInfo extends StatelessWidget {
  final String title;
  final String hint;
  final double height;
  const EventInfo(
      {super.key,
      required this.title,
      required this.hint,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: styleNormal16.copyWith(fontSize: 13),
        ),
        SizedBox(
          height: 8.h,
        ),
        Container(
          height: height,
          padding: const EdgeInsets.symmetric(vertical: 8),
          decoration: BoxDecoration(
            color: blackColor.withOpacity(0.05),
          ),
          child: TextFormField(
            decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 11),
                hintText: hint,
                hintStyle: style12.copyWith(color: greyColor),
                border: InputBorder.none),
          ),
        )
      ],
    );
  }
}
