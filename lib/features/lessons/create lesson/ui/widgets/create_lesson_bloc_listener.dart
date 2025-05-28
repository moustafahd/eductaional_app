
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/core/helpers/extensions.dart';
import 'package:untitled2/core/routing/routes.dart';
import 'package:untitled2/features/lessons/create%20lesson/logic/cubit/create_lesson_cubit.dart';
import 'package:untitled2/features/lessons/create%20lesson/logic/cubit/create_lesson_state.dart';

class CreateLessonBlocListener extends StatefulWidget {
  const CreateLessonBlocListener({super.key});

  @override
  State<CreateLessonBlocListener> createState() => _CreateLessonBlocListenerState();
}

class _CreateLessonBlocListenerState extends State<CreateLessonBlocListener> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<CreateLessonCubit, CreateLessonState>(
      listenWhen: (previous, current) => current is CreateLessonLoading || current is CreateLessonSuccess || current is CreateLessonFailure,
      listener: (context, state) {
        state.whenOrNull(
          createLessonLoading: () {
            showDialog(context: context, builder: (context) {
              return const Center(child: CircularProgressIndicator());
            });
          },
          createLessonSuccess: (response) {
            // Navigate to the next screen or show success message
            context.pop();
            context.pushReplacementNamed(Routes.navigation);
          },
          createLessonFailure: (error) {
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