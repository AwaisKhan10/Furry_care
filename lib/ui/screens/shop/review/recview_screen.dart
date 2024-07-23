// ignore_for_file: body_might_complete_normally_nullable, unnecessary_const

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furry_care/core/constants/colors.dart';
import 'package:furry_care/ui/screens/shop/review/review_view_model.dart';
import 'package:provider/provider.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ReviewModel(),
        child: Consumer<ReviewModel>(
            builder: (context, model, child) => ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    Container(
                      width: 289,
                      height: 121,
                      margin: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                          color: accentColor,
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(1.0, 2),
                                blurRadius: 2.0,
                                spreadRadius: 1.0)
                          ],
                          borderRadius: BorderRadius.only(
                              bottomLeft: const Radius.circular(12),
                              bottomRight: Radius.circular(12))),
                      child: Column(
                        children: [
                          Text("${model.list_review_data[index].title}"),
                          Text("${model.list_review_data[index].description}")
                        ],
                      ),
                    );
                  },
                )));
  }
}
