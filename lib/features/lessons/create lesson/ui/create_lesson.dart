
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/core/di/dependency_injecton.dart';
import 'package:untitled2/core/helpers/helpers.dart';
import 'package:untitled2/core/widgets/app_bar.dart';
import 'package:untitled2/core/widgets/primary_button.dart';
import 'package:untitled2/features/lessons/create%20lesson/logic/cubit/create_lesson_cubit.dart';
import 'package:untitled2/features/lessons/create%20lesson/ui/widgets/create_lesson_bloc_listener.dart';
import 'package:untitled2/features/lessons/create%20lesson/ui/widgets/create_lesson_form.dart';

class CreateLessonScreen extends StatelessWidget {
  const CreateLessonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreateLessonCubit(getIt()),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Stack(
              fit: StackFit.expand,
              children: [
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomAppBar(title: "Create New Lesson"),
                      verticalSpace(20),
                      CreateLessonForm(),
                      verticalSpace(20),
                      const CreateLessonBlocListener(),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 0,
                  right: 0,

                  child: Builder(
                    builder:
                        (context) => PrimaryButton(
                          buttonText: "Submit",
                          onPressed: () {
                            validatAndCreateLesson(context);
                            Navigator.pop(context);
                          } 
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validatAndCreateLesson(BuildContext context) {
    if (context.read<CreateLessonCubit>().formKey.currentState!.validate()) {
      context.read<CreateLessonCubit>().emitCreateLessonStates();
    }
  }
}
