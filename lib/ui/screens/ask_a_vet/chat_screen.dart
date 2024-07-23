// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:furry_care/core/constants/app_assets.dart';
import 'package:furry_care/core/constants/colors.dart';
import 'package:furry_care/core/constants/date_format.dart';
import 'package:furry_care/core/constants/text_field_decoration.dart';
import 'package:furry_care/core/constants/text_style.dart';
import 'package:furry_care/core/enums/view_state.dart';
import 'package:furry_care/core/model/app_user.dart';
import 'package:furry_care/core/model/messages.dart';
import 'package:furry_care/core/other/screen_utils.dart';
import 'package:furry_care/ui/screens/ask_a_vet/chat_view_model.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:provider/provider.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MessageViewModel(),
      child: Consumer<MessageViewModel>(
        builder: (context, model, child) => Scaffold(
          ///
          /// App Bar
          ///
          appBar: _appBar(title: "Dr. Natasha"),

          ///
          /// Start Body
          ///
          body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListView.builder(
                reverse: false,
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: model.messages.length,
                itemBuilder: (context, index) {
                  return model.messages.isEmpty && model.messages == null
                      ? Container()
                      : ChatContainer(
                          message: model.messages[index],
                        );
                },
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                decoration: BoxDecoration(
                  color: const Color(0xffF2F2F2),
                  borderRadius: BorderRadius.circular(15.0),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xffF2F2F2),
                      offset: Offset(0, 4),
                      blurRadius: 10.0,
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: TextFormField(
                  controller: model.messageController,
                  onChanged: (val) {
                    model.message.textMessage = val;
                    model.setState(ViewState.idle);
                  },
                  textAlign: TextAlign.start,
                  decoration: authFieldDecorationMessages.copyWith(
                      hintText: 'Message Dr. Nathasha',
                      prefixIcon: Image.asset(
                        AppAssets.clip,
                        scale: 4,
                      ),
                      suffixIcon: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Image.asset(
                              AppAssets.microphone,
                              scale: 4,
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Image.asset(
                              AppAssets.picture,
                              scale: 4,
                            ),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                        ],
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ChatContainer extends StatelessWidget {
  final Message? message;
  final AppUser? currentUser;
  final bool? isShow;

  const ChatContainer({super.key, this.message, this.currentUser, this.isShow});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        child: Align(
          alignment: (message?.fromUserId == currentUser?.id
              ? Alignment.topLeft
              : Alignment.topRight),
          child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: message?.fromUserId == currentUser?.id
                  ? MainAxisAlignment.start
                  : MainAxisAlignment.end,
              children: [
                ///
                /// Profile
                ///
                message?.fromUserId == currentUser?.id
                    ? Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: CircleAvatar(
                          radius: 16.r,
                          backgroundImage: AssetImage(
                            message?.imageUrl?.toString() ?? "",
                          ),
                        ),
                      )
                    : const SizedBox(),
                Column(
                  crossAxisAlignment: message?.fromUserId == currentUser?.id
                      ? CrossAxisAlignment.start
                      : CrossAxisAlignment.end,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        color: message?.fromUserId == currentUser?.id
                            ? const Color(0xffC6BFBA)
                            : accentColor,
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 12),
                      child: Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width * 0.6,
                            child: Text(message?.textMessage?.toString() ?? "",
                                style: style14.copyWith(
                                    fontWeight: FontWeight.w300,
                                    color: blackColor)),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 4.0),
                      child: Text(
                        onlyTime.format(message?.sendat ?? DateTime.now()),
                        style: style10,
                      ),
                    ),
                  ],
                ),
                message?.fromUserId != currentUser?.id
                    ? Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: CircleAvatar(
                          radius: 16.r,
                          backgroundImage: AssetImage(
                            message?.imageUrl?.toString() ?? "",
                          ),
                        ),
                      )
                    : const SizedBox(),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

AppBar _appBar({title}) {
  return AppBar(
    backgroundColor: accentColor,
    surfaceTintColor: accentColor,
    shadowColor: whiteColor,
    title: Row(
      children: [
        ///
        /// Profile
        ///
        CircleAvatar(
          radius: 16.r,
          backgroundImage: AssetImage(
            AppAssets.user2,
          ),
        ),
        SizedBox(
          width: 10.w,
        ),
        Expanded(
          child: Text(
            "$title",
            style: style16.copyWith(color: borderColor),
          ),
        ),
      ],
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              AppAssets.phone_call,
              scale: 3.8,
            ),
            SizedBox(
              width: 20.w,
            ),
            Image.asset(
              AppAssets.video_camera,
              scale: 3.5,
            ),
          ],
        ),
      )
    ],
    leading: GestureDetector(
      onTap: () => Get.back(),
      child: Icon(
        Icons.arrow_back,
        size: 22.sp,
        color: borderColor,
      ),
    ),
  );
}
