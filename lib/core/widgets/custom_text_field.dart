import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled2/core/helpers/helpers.dart';
import 'package:untitled2/core/theming/colors.dart';
import 'package:untitled2/core/theming/styles.dart';
import 'package:untitled2/generated/l10n.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 7, 0, 7),
      height: 50.h,
      decoration: BoxDecoration(
        color: ColorManager.lightGrey,
        //color: Colors.grey.shade200,
        borderRadius: circularBorder(10),
      ),

      child: TextField(
        decoration: InputDecoration(
          hintStyle: TextStyles.font16GreyRegular,
          contentPadding: EdgeInsets.all(15),
          hintText: S.of(context).courseSearch,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
