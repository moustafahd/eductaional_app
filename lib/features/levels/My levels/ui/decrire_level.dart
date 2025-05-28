import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled2/core/helpers/helpers.dart';
import 'package:untitled2/core/theming/colors.dart';
import 'package:untitled2/core/theming/styles.dart';
import 'package:untitled2/core/widgets/app_bar.dart';
import 'package:untitled2/features/lessons/create%20lesson/ui/create_lesson.dart';
import 'package:untitled2/features/levels/My%20levels/ui/widgets/upload_container.dart';
import 'package:untitled2/features/levels/create%20level/data/models/create_level_response.dart';
import 'package:untitled2/features/quiz/create%20quiz/ui/create_quiz.dart';

class DecrireLevel extends StatelessWidget {
  final CreateLevelResponse levelItem;
  const DecrireLevel({super.key, required this.levelItem});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: 
      SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(title: "Decrire Level"),
              verticalSpace(20),
              Text(
                levelItem.description,
                style: TextStyles.font26BlackSemiBold,
              ),
              verticalSpace(20),
              UploadContainer(
                icon: Icons.cloud_upload_outlined,
                title: "Add new lesson",
                text: "Add lesson",
                onTap: () {
                  // Handle the upload action
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const CreateLessonScreen(),
                    ),
                  );
                },
              ),
              verticalSpace(20),
              UploadContainer(
                icon: Icons.quiz_outlined,
                title: "Add new Quiz:",
                text: "Add Quiz",
                onTap: () {
                  // Handle the upload action
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const CreateQuizScreen(),
                    ),
                  );
                },
              ),
              verticalSpace(20),
              UploadContainer(
                icon: Icons.note_alt_outlined,
                title: "Add new Exam:",
                text: "Add Exam",
                onTap: () {
                  // Handle the upload action
                },
              ),
            ],
          ),
        ),
      ))
    );
  }
}