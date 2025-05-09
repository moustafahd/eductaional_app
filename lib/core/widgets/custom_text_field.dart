import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled2/core/helpers/helpers.dart';
import 'package:untitled2/core/theming/colors.dart';
import 'package:untitled2/core/theming/styles.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final Function(String?) validator;
  final bool? isObscureText;
  final Widget? suffixIcon;
  const CustomTextField({
    super.key,
    required this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.controller,
    required this.validator,
    //required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
            hintStyle: TextStyles.font16GreyRegular,
            contentPadding: EdgeInsets.all(16.r),
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: circularBorder(10),
              borderSide: BorderSide.none
            ),
            suffixIcon: suffixIcon,
            suffixIconColor: ColorManager.grey,
            filled: true,
            fillColor: ColorManager.lightGrey,
            
          ),
          obscureText: isObscureText ?? false,
          validator: (value) {
            return validator(value);
          },
        ),
      ],
    );
  }
}
