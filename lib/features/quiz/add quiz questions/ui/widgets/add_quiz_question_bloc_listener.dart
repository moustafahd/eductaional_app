
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/core/helpers/extensions.dart';
import 'package:untitled2/features/quiz/add%20quiz%20questions/logic/cubit/add_quiz_questions_cubit.dart';
import 'package:untitled2/features/quiz/add%20quiz%20questions/logic/cubit/add_quiz_questions_state.dart';
import 'package:untitled2/features/quiz/add%20quiz%20questions/ui/add_quiz_questions.dart';

class AddQuizQuestionsBlocListener extends StatefulWidget {
  const AddQuizQuestionsBlocListener({super.key});

  @override
  State<AddQuizQuestionsBlocListener> createState() => _AddQuizQuestionsBlocListenerState();
}

class _AddQuizQuestionsBlocListenerState extends State<AddQuizQuestionsBlocListener> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AddQuizQuestionsCubit, AddQuizQuestionsState>(
      listenWhen: (previous, current) => current is AddQuizQuestionsLoading || current is AddQuizQuestionsSuccess || current is AddQuizQuestionsFailure,
      listener: (context, state) {
        state.whenOrNull(
          addQuizQuestionsLoading: () {
            showDialog(context: context, builder: (context) {
              return const Center(child: CircularProgressIndicator());
            });
          },
          addQuizQuestionsSuccess: (response) {
            // Navigate to the next screen or show success message
            context.pop();
          },
          addQuizQuestionsFailure: (error) {
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