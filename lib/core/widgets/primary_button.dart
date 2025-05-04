import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled2/core/helpers/helpers.dart';
import 'package:untitled2/core/theming/colors.dart';
import 'package:untitled2/core/theming/styles.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const PrimaryButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 14.w,
      right: 14.w,
      bottom: 24.h,
      child: DecoratedBox(
        decoration: BoxDecoration(
          boxShadow: [
            ShadowStyles.blueShadow3Down15Radius,
            ShadowStyles.whiteShadow12Up20Radius,
          ],
        ),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorManager.mainBlue,
            minimumSize: Size(double.infinity, 55.h),
            shape: RoundedRectangleBorder(borderRadius: circularBorder(8)),
          ),
          child: Text(text, style: TextStyles.font16WhiteMedium),
        ),
      ),
    );
  }
}
