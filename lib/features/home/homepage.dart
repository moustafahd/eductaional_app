import 'package:flutter/material.dart';
import 'package:untitled2/core/helpers/helpers.dart';
import 'package:untitled2/core/widgets/app_bar.dart';
import 'package:untitled2/core/widgets/home_widget.dart';
import 'package:untitled2/core/widgets/lesson_card.dart';
import 'package:untitled2/generated/l10n.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:  16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            
              children: [
                CustomAppBar(title: 'Home Page'),
                verticalSpace(10),
                HomeWidget(),
                verticalSpace(10),
                LessonCard(S.of(context).lessonTitle , S.of(context).lessonDuration ),
                LessonCard(S.of(context).lessonTitle , S.of(context).lessonDuration ),
                LessonCard(S.of(context).lessonTitle , S.of(context).lessonDuration ),
                LessonCard(S.of(context).lessonTitle , S.of(context).lessonDuration ),
                LessonCard(S.of(context).lessonTitle , S.of(context).lessonDuration ),
                LessonCard(S.of(context).lessonTitle , S.of(context).lessonDuration ),
                LessonCard(S.of(context).lessonTitle , S.of(context).lessonDuration ),
              ],
            ),
          ),
        ),
      )
    );
  }
}
