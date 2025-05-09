import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled2/core/helpers/extensions.dart';
import 'package:untitled2/core/helpers/helpers.dart';
import 'package:untitled2/core/helpers/regex.dart';
import 'package:untitled2/core/routing/routes.dart';
import 'package:untitled2/core/theming/styles.dart';
import 'package:untitled2/core/widgets/custom_text_field.dart';
import 'package:untitled2/core/widgets/primary_button.dart';
import 'package:untitled2/generated/l10n.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpace(20),
                  Text(
                    S.of(context).forgotPassword,
                    style: TextStyles.font26BlueSemiBold,
                  ),
                  verticalSpace(10),
                  Text(
                    S.of(context).forgotPasswordDescription,
                    style: TextStyles.font16GreyRegular,
                  ),
                  verticalSpace(10),
                  CustomTextField(hintText: S.of(context).emailHint,
                  validator: (value) {
                    if (value == null || value.isEmpty || !Regex.isEmailValid(value)) {
                      return "pleaseEnterValidEmail";
                    }
                    return null;
                  },),
                ],
              ),
            ),
            PrimaryButton(
              buttonText: S.of(context).submit,
              onPressed: () {
                context.pushNamed(Routes.login);
              },
            ),
          ],
        ),
      ),
    );
  }
}
