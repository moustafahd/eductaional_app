
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/core/di/dependency_injecton.dart';
import 'package:untitled2/core/helpers/helpers.dart';
import 'package:untitled2/core/widgets/app_bar.dart';
import 'package:untitled2/core/widgets/primary_button.dart';
import 'package:untitled2/features/quiz/create%20quiz/logic/cubit/create_quiz_cubit.dart';
import 'package:untitled2/features/quiz/create%20quiz/ui/widgets/create_quiz_bloc_listener.dart';
import 'package:untitled2/features/quiz/create%20quiz/ui/widgets/create_quiz_form.dart';

class CreateQuizScreen extends StatelessWidget {
  const CreateQuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreateQuizCubit(getIt()),
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
                      const CustomAppBar(title: "Create New Quiz"),
                      verticalSpace(20),
                      CreateQuizForm(),
                      verticalSpace(20),
                      const CreateQuizBlocListener(),
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
                            validatAndCreateQuiz(context);
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

  void validatAndCreateQuiz(BuildContext context) {
    if (context.read<CreateQuizCubit>().formKey.currentState!.validate()) {
      context.read<CreateQuizCubit>().emitCreateQuizStates();
    }
  }
}
