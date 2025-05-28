import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled2/core/helpers/helpers.dart';
import 'package:untitled2/core/theming/colors.dart';
import 'package:untitled2/core/theming/styles.dart';

class UploadContainer extends StatelessWidget {
  final IconData icon;
  final String title;
  final String text;
  final Function() onTap;
  const UploadContainer({super.key, required this.icon, required this.title, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyles.font14BlackSemiBold,
        ),
        verticalSpace(10),
        GestureDetector(
                    onTap: onTap,
                    child: Container(
                      height: 150.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: ColorManager.mainBlue5Opacity,
                          width: 2,
                          strokeAlign: BorderSide.strokeAlignOutside,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              icon,
                              color: ColorManager.mainBlue5Opacity,
                              size: 40.sp,
                            ),
                            verticalSpace(10),
                            Text(
                              text,
                              style: TextStyles.font16Blue50OpacityMedium,
                            ),
                          ],
                        )
                      ),
                    ),
                  ),
      ],
    );
  }
}