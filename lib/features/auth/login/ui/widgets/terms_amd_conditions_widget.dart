import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/core/helpers/extensions.dart';
import 'package:untitled2/core/routing/routes.dart';
import 'package:untitled2/core/theming/styles.dart';


class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging, you agree to our',
            style: TextStyles.font14GreyRegular,
          ),
          TextSpan(
            text: ' Terms & Conditions',
            style: TextStyles.font14BlueMedium,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushNamed(Routes.termsConditions);
              },
          ),
          TextSpan(
            text: ' and',
            style: TextStyles.font14GreyRegular.copyWith(height: 1.5),
          ),
          TextSpan(
            text: ' Privacy Policy',
            style: TextStyles.font14BlueMedium,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushNamed(Routes.termsConditions);
              },
          ),
        ],
      ),
    );
  }
}