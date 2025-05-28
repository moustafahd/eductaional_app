import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/core/helpers/extensions.dart';
import 'package:untitled2/core/routing/routes.dart';
import 'package:untitled2/features/levels/create%20level/logic/cubit/create_level_cubit.dart';
import 'package:untitled2/features/levels/create%20level/logic/cubit/create_level_state.dart';

class CreateLevelBlocListener extends StatefulWidget {
  const CreateLevelBlocListener({super.key});

  @override
  State<CreateLevelBlocListener> createState() => _CreateLevelBlocListenerState();
}

class _CreateLevelBlocListenerState extends State<CreateLevelBlocListener> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<CreateLevelCubit, CreateLevelState>(
      listenWhen: (previous, current) => current is CreateLevelLoading || current is CreateLevelSuccess || current is CreateLevelFailure,
      listener: (context, state) {
        state.whenOrNull(
          createLevelLoading: () {
            showDialog(context: context, builder: (context) {
              return const Center(child: CircularProgressIndicator());
            });
          },
          createLevelSuccess: (response) {
            // Navigate to the next screen or show success message
            context.pop();
            context.pushReplacementNamed(Routes.navigation);
          },
          createLevelFailure: (error) {
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