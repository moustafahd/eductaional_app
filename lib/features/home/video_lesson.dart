import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled2/core/helpers/helpers.dart';
import 'package:untitled2/core/theming/styles.dart';
import 'package:untitled2/core/widgets/app_bar.dart';
import 'package:untitled2/core/widgets/lesson_card.dart';
import 'package:untitled2/features/home/video_player_view.dart';
import 'package:untitled2/generated/l10n.dart';

class VideoLesson extends StatelessWidget {
  const VideoLesson({super.key});

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
              VideoPlayerView(videoUrl: "https://aclanthology.org/N18-1057.mp4"),
              verticalSpace(15),
              Text(
                "First Lesson: Introduction to the world of Artificial Intelligence.",
                style: TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              verticalSpace(10),
              Center(child: Text("UP Next:", style: TextStyles.font14BlackSemiBold ,),),
              verticalSpace(10),
              ...List.generate(
                    20,
                    (index) => LessonCard(
                      S.of(context).lessonTitle,
                      S.of(context).lessonDuration,
                    ),
                  ),
              
            ],
        ),
        ),
      ),
    );
  }
}