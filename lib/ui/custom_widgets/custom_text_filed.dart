import 'package:flutter/material.dart';
import 'package:furry_care/core/constants/text_field_decoration.dart'; // Ensure this import is present
import 'package:furry_care/core/constants/text_style.dart';
import 'package:furry_care/core/other/screen_utils.dart';

class VolunteerTextfield extends StatelessWidget {
  final String title;
  final String hint;
  const VolunteerTextfield(
      {super.key, required this.title, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: styleNormal16.copyWith(fontSize: 14),
        ),
        SizedBox(
          height: 8.h,
        ),
        TextFormField(
          decoration: authFieldDecoration.copyWith(hintText: hint),
        ),
      ],
    );
  }
}
