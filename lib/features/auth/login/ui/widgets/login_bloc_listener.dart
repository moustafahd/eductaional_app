import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/core/helpers/extensions.dart';
import 'package:untitled2/core/routing/routes.dart';
import 'package:untitled2/core/theming/colors.dart';
import 'package:untitled2/educational_app.dart';
import 'package:untitled2/features/auth/login/logic/cubit/login_cubit.dart';
import 'package:untitled2/features/auth/login/logic/cubit/login_state.dart';

class LoginBlocListener extends StatefulWidget {
  const LoginBlocListener({super.key});

  @override
  State<LoginBlocListener> createState() => _LoginBlocListenerState();
}

class _LoginBlocListenerState extends State<LoginBlocListener> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) => current is Loading ||
          current is Success || current is Failure,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(context: context, builder: (context) {
              return const Center(child: CircularProgressIndicator(
                color: ColorManager.mainBlue
              ));
            });
          },
          success: (response) {
            // Navigate to the next screen or show success message
            context.pop();
            isStudent() ? context.pushReplacementNamed(Routes.home) : context.pushReplacementNamed(Routes.profile);
          },
          failure: (error) {
            // Show error message
            context.pop();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(error)),
            );
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
