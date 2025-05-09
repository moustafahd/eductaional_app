import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled2/core/helpers/extensions.dart';
import 'package:untitled2/core/helpers/helpers.dart';
import 'package:untitled2/core/routing/routes.dart';
import 'package:untitled2/core/theming/styles.dart';
import 'package:untitled2/core/widgets/primary_button.dart';
import 'package:untitled2/features/auth/login/logic/cubit/login_cubit.dart';
import 'package:untitled2/features/auth/login/logic/cubit/login_state.dart';
import 'package:untitled2/features/auth/login/ui/widgets/email_and_password_form.dart';
import 'package:untitled2/features/auth/login/ui/widgets/login_bloc_listener.dart';
import 'package:untitled2/features/auth/login/ui/widgets/skip_login.dart';
import 'package:untitled2/features/auth/login/ui/widgets/terms_amd_conditions_widget.dart';
import 'package:untitled2/generated/l10n.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SkipLogin(),
                verticalSpace(10),
                Text(
                  S.of(context).welcomeBack,
                  style: TextStyles.font26BlueSemiBold,
                ),
                verticalSpace(10),
                Text(
                  S.of(context).loginDescription,
                  style: TextStyles.font16GreyRegular,
                ),
                verticalSpace(40),
                const EmailAndPasswordForm(),
                verticalSpace(20),
                PrimaryButton(
                      buttonText: "Login",
                      onPressed: () => validateAndLogin(context),
                    ),
               
                verticalSpace(15),
                Center(
                  child: TextButton(
                    onPressed: () {
                      context.pushNamed(Routes.forgotPassword);
                    },
                    child: Text(
                      S.of(context).forgotPassword,
                      style: TextStyles.font16BlueMedium,
                    ),
                  ),
                ),
                verticalSpace(60),
                const TermsAndConditionsText(),
                const LoginBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateAndLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates();
    }
  
  
}
}
