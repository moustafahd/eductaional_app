import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled2/core/helpers/helpers.dart';
import 'package:untitled2/core/theming/images.dart';
import 'package:untitled2/core/theming/colors.dart';
import 'package:untitled2/core/theming/styles.dart';
import 'package:untitled2/educational_app.dart';
import 'package:untitled2/generated/l10n.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 170.h,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: isArabic() ? Alignment(1, -1) : Alignment(-1, -1),
                end: isArabic() ? Alignment.bottomLeft : Alignment.bottomRight,
                colors: [
                  ColorManager.lightBlue,
                  ColorManager.lightBlue,
                  ColorManager.mainBlue,
                  ColorManager.mainBlue,
                  ColorManager.lightBlue,
                  ColorManager.lightBlue,
                  ColorManager.mainBlue,
                  ColorManager.mainBlue,
                ],
                stops: [0.0, 0.2, 0.2, 0.50, 0.50, 0.8, 0.8, 1.0],

                tileMode: TileMode.mirror,
              ),
              borderRadius: circularBorder(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  S.of(context).homeWidgetTitle,
                  style: TextStyles.font22WhiteMedium,
                ),
                SizedBox(height: 10.h),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: ColorManager.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: circularBorder(26),
                      ),
                    ),
                    child: Text(
                      S.of(context).discovreButton,
                      style: TextStyle(color: ColorManager.mainBlue),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: isArabic() ? null : 14.w,
            left: isArabic() ? 14.w : null,
            child: Image.asset(ImageManager.studentImageHome, height: 200.h),
          ),
        ],
      ),
    );
  }
}
