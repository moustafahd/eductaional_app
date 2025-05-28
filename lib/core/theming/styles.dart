
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled2/core/theming/colors.dart';
import 'package:untitled2/core/theming/font_weights.dart';

class TextStyles {
  static TextStyle font16GreyRegular = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeights.regular,
    color: ColorManager.grey,
  );
  static TextStyle font14GreyRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeights.regular,
    color: ColorManager.grey,
  );
  static TextStyle font14BlackSemiBold = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeights.semiBold,
    color: ColorManager.black,
  );
  static TextStyle font26BlackSemiBold = TextStyle(
    fontSize: 26.sp,
    fontWeight: FontWeights.semiBold,
    color: ColorManager.black,
  );
  static TextStyle font18BlackSemiBold = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeights.semiBold,
    color: ColorManager.black,
  );
  static TextStyle font16WhiteMedium = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeights.medium,
    color: ColorManager.white,
  );
  static TextStyle font22WhiteMedium = TextStyle(
    fontSize: 22.sp,
    fontWeight: FontWeights.medium,
    color: ColorManager.white,
  );
  
  static TextStyle font26BlueSemiBold = TextStyle(
    fontSize: 26.sp,
    fontWeight: FontWeights.semiBold,
    color: ColorManager.mainBlue,
  );
  static TextStyle font18BlueSemiBold = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeights.semiBold,
    color: ColorManager.mainBlue,
  );
  static TextStyle font16BlueMedium = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeights.medium,
    color: ColorManager.mainBlue,
  );
  static TextStyle font16Blue50OpacityMedium = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeights.medium,
    color: ColorManager.mainBlue5Opacity,
  );
  static TextStyle font14BlueMedium = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeights.medium,
    color: ColorManager.mainBlue,
  );
}

class ShadowStyles {
  static BoxShadow blueShadow3Down15Radius = BoxShadow(
    color: ColorManager.mainBlue5Opacity,
    offset: Offset(0, 3),
    blurRadius: 15,
  );
  static BoxShadow whiteShadow12Up20Radius = BoxShadow(
    color: ColorManager.white8Opacity,
    offset: Offset(0, -12),
    blurRadius: 20,
  );
  static BoxShadow blueOpacityShadow3Down15Radius = BoxShadow(
    color: ColorManager.mainBlue.withValues(alpha: 0.5), // Blue shadow
    offset: Offset(0, 3), // Moves shadow downward
    blurRadius: 15, // Softness of shadow
  );
}

