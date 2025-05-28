import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled2/core/helpers/helpers.dart';
import 'package:untitled2/core/theming/colors.dart';
import 'package:untitled2/core/theming/styles.dart';
import 'package:untitled2/generated/l10n.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({super.key});

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 7),
      height: 50.h,
      decoration: BoxDecoration(
        color: ColorManager.lightGrey,
        borderRadius: circularBorder(10),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintStyle: TextStyle(fontSize: 16.sp, color: ColorManager.grey),
          contentPadding: EdgeInsets.all(15.r),
          hintText: S.of(context).courseSearch,
          border: InputBorder.none,
          suffixIcon: Container(
            height: 35.h,
            width: 35.w,
            margin: EdgeInsets.all(7.r),
            decoration: BoxDecoration(
              boxShadow: [
                ShadowStyles.blueShadow3Down15Radius,
              ],
              color: ColorManager.mainBlue,
              borderRadius: circularBorder(10),
            ),
            child: IconButton(
              onPressed: () {

              },
              icon: Icon(Icons.search, color: ColorManager.white),
            ),
          ),
        ),
      ),
    );
  }
}
