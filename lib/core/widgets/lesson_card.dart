import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled2/core/theming/colors.dart';
import 'package:untitled2/core/theming/styles.dart';

class LessonCard extends StatelessWidget {
  final String title;
  final String duration;
  final VoidCallback onTap;
  const LessonCard( {super.key, required this.title, required this.duration, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5.h),
        height: 90.h,
        decoration: BoxDecoration(
          color: ColorManager.lightGrey,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Container(
              height: 70.h,
              width: 70.w,
              margin: EdgeInsets.all(10.r),
              decoration: BoxDecoration(
                gradient: SweepGradient(
                  colors: [
                    ColorManager.mainBlue,
                    ColorManager.darkBlue,
                    ColorManager.mainBlue,
                  ],
                  stops: [0.1, 0.8, 1.0],
      
                  tileMode: TileMode.clamp,
                ),
      
                borderRadius: BorderRadius.circular(9.57),
              ),
              child: Center(
                child: Icon(
                  Icons.play_arrow,
                  color: ColorManager.white,
                  size: 30.r,
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                    maxLines: 2,
                    style: TextStyles.font14BlackSemiBold,
                  ),
                  Text(duration, style: TextStyles.font14GreyRegular),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
