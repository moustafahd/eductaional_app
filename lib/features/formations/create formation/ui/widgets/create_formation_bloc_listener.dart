import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/core/helpers/extensions.dart';
import 'package:untitled2/core/routing/routes.dart';
import 'package:untitled2/features/formations/create%20formation/logic/cubit/create_formation_cubit.dart';
import 'package:untitled2/features/formations/create%20formation/logic/cubit/create_formation_state.dart';

class CreateFormationBlocListener extends StatefulWidget {
  const CreateFormationBlocListener({super.key});

  @override
  State<CreateFormationBlocListener> createState() => _CreateFormationBlocListenerState();
}

class _CreateFormationBlocListenerState extends State<CreateFormationBlocListener> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<CreateFormationCubit, CreateFormationState>(
      listenWhen: (previous, current) => current is CreateFormationLoading || current is CreateFormationSuccess || current is CreateFormationFailure,
      listener: (context, state) {
        state.whenOrNull(
          createFormationLoading: () {
            showDialog(context: context, builder: (context) {
              return const Center(child: CircularProgressIndicator());
            });
          },
          createFormationSuccess: (response) {
            // Navigate to the next screen or show success message
            context.pop();
            context.pushReplacementNamed(Routes.navigation);
          },
          createFormationFailure: (error) {
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