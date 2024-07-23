import 'package:flutter/material.dart';
import 'package:furry_care/core/constants/app_assets.dart';
import 'package:furry_care/core/model/messages.dart';
import 'package:furry_care/core/view_model/base_view_model.dart';

class MessageViewModel extends BaseViewModel {
  Message message = Message();

  TextEditingController messageController = TextEditingController();
  List<Message> messages = [
    Message(
        fromUserId: '1',
        textMessage: 'Good Evening. Dr. Natasha',
        imageUrl: AppAssets.user1),
    Message(
      toUserId: '1',
      textMessage:
          'Hi Alex! I hope bunny is feeling better after his surgery yesterday',
      imageUrl: AppAssets.user2,
    ),
    Message(
      fromUserId: '1',
      imageUrl: AppAssets.user1,
      textMessage:
          'Thanks Dr. Natasha he is feeling better but I actually had one question',
    ),
  ];
}
