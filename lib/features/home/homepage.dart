import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled2/core/helpers/extensions.dart';
import 'package:untitled2/core/routing/routes.dart';
import 'package:untitled2/core/widgets/app_bar.dart';
import 'package:untitled2/core/widgets/home_widget.dart';
import 'package:untitled2/core/widgets/lesson_card.dart';
import 'package:untitled2/core/widgets/primary_button.dart';
import 'package:untitled2/core/widgets/search_bar.dart';
import 'package:untitled2/generated/l10n.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            SingleChildScrollView(
              padding: EdgeInsets.only(left: 14.w, right: 14.w),
              child: Column(
                children: [
                  CustomAppBar(title: S.of(context).homePageTitle,),
                  SizedBox(height: 18.h),
                  Searchbar(),
                  SizedBox(height: 18.h),
                  HomeWidget(),
                  SizedBox(height: 18.h),
                  //CustomTextField(),
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
            PrimaryButton(text: S.of(context).enrollButtton, onPressed: () {
              context.pushNamed(Routes.login);
            }),
          ],
        ),
      ),
    );
  }
}
