import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled2/core/helpers/helpers.dart';
import 'package:untitled2/core/theming/styles.dart';
import 'package:untitled2/core/widgets/app_bar.dart';
import 'package:untitled2/core/widgets/lesson_card.dart';
import 'package:untitled2/features/home/video_player_view.dart';
import 'package:untitled2/features/lessons/create%20lesson/data/models/create_lesson_response.dart';
import 'package:untitled2/generated/l10n.dart';

class VideoLesson extends StatelessWidget {
  final CreateLessonResponse lessonItem;
  const VideoLesson({super.key, required this.lessonItem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(14.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(title: "Video Lesson"),
              verticalSpace(15),
              VideoPlayerView(videoUrl: lessonItem.lessonUrl),
              verticalSpace(15),
              Text(
                lessonItem.title,
                style: TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              verticalSpace(10),
              
              
            ],
        ),
        ),
      ),
    );
  }
}