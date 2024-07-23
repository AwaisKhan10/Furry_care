import 'package:flutter/material.dart';
import 'package:furry_care/core/constants/colors.dart';
import 'package:furry_care/core/constants/text_style.dart';
import 'package:furry_care/ui/screens/volunteer/add_events/add_events.dart';
import 'package:get/route_manager.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: appbarDecoration,
      child: AppBar(
        backgroundColor: accentColor,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TabBar(
                  indicator: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: borderColor,
                        width: 3,
                      ),
                    ),
                  ),
                  isScrollable: true,
                  tabAlignment: TabAlignment.start,
                  labelPadding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                  indicatorColor: blackColor,
                  tabs: [
                    Tab(
                      child: Text(
                        'Volunteering',
                        style: styleNormal16,
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Events',
                        style: styleNormal16,
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    Get.to(AddEventVolunteer());
                  },
                  child: const InkWell(
                      child: Icon(
                    Icons.add,
                  )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
