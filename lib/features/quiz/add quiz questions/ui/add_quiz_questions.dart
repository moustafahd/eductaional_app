import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/core/di/dependency_injecton.dart';
import 'package:untitled2/core/helpers/helpers.dart';
import 'package:untitled2/core/widgets/app_bar.dart';
import 'package:untitled2/core/widgets/primary_button.dart';
import 'package:untitled2/features/quiz/add%20quiz%20questions/logic/cubit/add_quiz_questions_cubit.dart';
import 'package:untitled2/features/quiz/add%20quiz%20questions/ui/widgets/add_quiz_question_bloc_listener.dart';
import 'package:untitled2/features/quiz/add%20quiz%20questions/ui/widgets/add_quiz_questions_and_choices_form.dart';
import 'package:untitled2/features/quiz/create%20quiz/logic/cubit/create_quiz_cubit.dart';

class AddQuizQuestionScreen extends StatelessWidget {
  const AddQuizQuestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddQuizQuestionsCubit(getIt()),
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
                      CustomAppBar(title: "Add Quiz Questions"),
                      verticalSpace(20),
                      AddQuizQuestionsAndChoicesForm(),
                      AddQuizQuestionsBlocListener()
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
                            validatAndAddQuizQuestion(context);
                            Navigator.pop(context);
                          },
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

  void validatAndAddQuizQuestion(BuildContext context) {
    if (context.read<AddQuizQuestionsCubit>().formKey.currentState!.validate()) {
      context.read<AddQuizQuestionsCubit>().emitAddQuizQuestionsStates();
    }
  }
}
