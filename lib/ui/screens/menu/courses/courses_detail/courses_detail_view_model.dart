// ignore_for_file: deprecated_member_use, prefer_initializing_formals

import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class CoursesDetailViewModel extends ChangeNotifier {
  late FlickManager flickManager;

  CoursesDetailViewModel({
    required FlickManager flickManager,
  }) : flickManager = flickManager;

  CoursesDetailViewModel.initialize() {
    flickManager = FlickManager(
      videoPlayerController: VideoPlayerController.network(
          "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4")
        ..addListener(() {
          if (flickManager.flickVideoManager?.isVideoInitialized ?? false) {
            notifyListeners();
          }
        })
        ..initialize().then((_) {
          notifyListeners();
        }),
    );
  }
  final List<Map<String, String>> items = [
    {
      'title': 'Introduction',
      'preview': 'Preview',
      'duration': '1:20',
    },
  ];

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }
}
