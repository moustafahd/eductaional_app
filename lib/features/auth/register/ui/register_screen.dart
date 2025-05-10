import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled2/core/helpers/extensions.dart';
import 'package:untitled2/core/helpers/helpers.dart';
import 'package:untitled2/core/routing/routes.dart';
import 'package:untitled2/core/theming/styles.dart';
import 'package:untitled2/core/widgets/primary_button.dart';
import 'package:untitled2/features/auth/login/ui/widgets/skip_auth.dart';
import 'package:untitled2/features/auth/login/ui/widgets/terms_amd_conditions_widget.dart';
import 'package:untitled2/features/auth/register/logic/cubit/register_cubit.dart';
import 'package:untitled2/features/auth/register/ui/widgets/fill_profile_form.dart';
import 'package:untitled2/features/auth/register/ui/widgets/register_bloc_listener.dart';
import 'package:untitled2/features/auth/register/ui/widgets/register_form.dart';
import 'package:untitled2/generated/l10n.dart';

class RegisterScreen extends StatefulWidget {
  final String type;
  const RegisterScreen({super.key,  required this.type});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  
  @override
  void initState() {
    super.initState();

    context.read<RegisterCubit>().type = widget.type;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding:  EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SkipAuth(),
              verticalSpace(10),
              Text(
                  S.of(context).createAccount,
                  style: TextStyles.font26BlueSemiBold,
                ),
                verticalSpace(10),
                Text(
                  S.of(context).registerDescription,
                  style: TextStyles.font16GreyRegular,
                ),
                verticalSpace(10),
                const RegisterForm(),
                verticalSpace(10),
                PrimaryButton(
                      buttonText: "Continue",
                      onPressed: () => validatAndRegister(context),
                    ),
                verticalSpace(60),
                //const TermsAndConditionsText(),
                const RegisterBlocListener(),
            ],
          ),
        ),
      ),
    );
  }
  void validatAndRegister(BuildContext context) {
    if (context.read<RegisterCubit>().formKey.currentState!.validate()) {
      context.read<RegisterCubit>().emitRegisterStates();
    }
  
  
}
}