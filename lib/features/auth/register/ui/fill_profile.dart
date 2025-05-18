import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled2/core/helpers/helpers.dart';
import 'package:untitled2/core/theming/styles.dart';
import 'package:untitled2/features/auth/register/ui/widgets/fill_profile_form.dart';
import 'package:untitled2/generated/l10n.dart';

class FillProfile extends StatelessWidget {
  const FillProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(20),
              Text(
                  S.of(context).fillProfile,
                  style: TextStyles.font26BlueSemiBold,
                ),
                verticalSpace(10),
                Text(
                  S.of(context).fillProfileDescription,
                  style: TextStyles.font16GreyRegular,
                ),
                verticalSpace(60),
                const FillProfileForm(),
                verticalSpace(40),
                
            ],
          ),
        ),
      ),

    );
  }
  
}