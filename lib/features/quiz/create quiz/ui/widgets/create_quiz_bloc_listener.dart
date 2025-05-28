
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/core/helpers/extensions.dart';
import 'package:untitled2/features/quiz/add%20quiz%20questions/ui/add_quiz_questions.dart';
import 'package:untitled2/features/quiz/create%20quiz/logic/cubit/create_quiz_cubit.dart';
import 'package:untitled2/features/quiz/create%20quiz/logic/cubit/create_quiz_state.dart';

class CreateQuizBlocListener extends StatefulWidget {
  const CreateQuizBlocListener({super.key});

  @override
  State<CreateQuizBlocListener> createState() => _CreateQuizBlocListenerState();
}

class _CreateQuizBlocListenerState extends State<CreateQuizBlocListener> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<CreateQuizCubit, CreateQuizState>(
      listenWhen: (previous, current) => current is CreateQuizLoading || current is CreateQuizSuccess || current is CreateQuizFailure,
      listener: (context, state) {
        state.whenOrNull(
          createQuizLoading: () {
            showDialog(context: context, builder: (context) {
              return const Center(child: CircularProgressIndicator());
            });
          },
          createQuizSuccess: (response) {
            // Navigate to the next screen or show success message
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => AddQuizQuestionScreen()
              ),
            ); 
          },
          createQuizFailure: (error) {
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