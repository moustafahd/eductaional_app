import 'package:flutter/material.dart';
import 'package:untitled2/core/helpers/extensions.dart';
import 'package:untitled2/core/routing/routes.dart';
import 'package:untitled2/core/theming/styles.dart';
import 'package:untitled2/generated/l10n.dart';

class SkipAuth extends StatelessWidget {
  const SkipAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: TextButton(
        onPressed: () {
          context.pushNamed(Routes.home);
        },
        child: Text(
          S.of(context).skipLogin,
          style: TextStyles.font18BlueSemiBold,
        ),
      ),
    );
  }
}
