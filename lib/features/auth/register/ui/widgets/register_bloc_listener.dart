import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/core/helpers/extensions.dart';
import 'package:untitled2/core/routing/routes.dart';
import 'package:untitled2/core/theming/colors.dart';
import 'package:untitled2/features/auth/register/logic/cubit/register_cubit.dart';
import 'package:untitled2/features/auth/register/logic/cubit/register_state.dart';

class RegisterBlocListener extends StatefulWidget {
  const RegisterBlocListener({super.key});

  @override
  State<RegisterBlocListener> createState() => _RegisterBlocListenerState();
}

class _RegisterBlocListenerState extends State<RegisterBlocListener> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterCubit, RegisterState>(
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
            context.pushReplacementNamed(Routes.login);
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
