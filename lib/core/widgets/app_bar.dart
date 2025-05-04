import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled2/core/helpers/helpers.dart';
import 'package:untitled2/core/theming/colors.dart';
import 'package:untitled2/core/theming/styles.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 45.h,
          width: 45.w,
          decoration: BoxDecoration(
            color: ColorManager.lightGrey,
            borderRadius: circularBorder(10),
          ),
          child: Icon(Icons.arrow_back_ios_new_rounded, size: 24.r, color: ColorManager.mainBlue),
        ),
        Expanded(
          child: Center(
            child: Text(title, style: TextStyles.font18BlackSemiBold),
          ),
        ),
        SizedBox(width: 45.w),
      ],
    );
  }
}
