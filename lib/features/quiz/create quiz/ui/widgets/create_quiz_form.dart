
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/core/helpers/helpers.dart';
import 'package:untitled2/core/theming/styles.dart';
import 'package:untitled2/core/widgets/custom_text_field.dart';
import 'package:untitled2/features/quiz/create%20quiz/logic/cubit/create_quiz_cubit.dart';

class CreateQuizForm extends StatefulWidget {
  const CreateQuizForm({super.key});

  @override
  State<CreateQuizForm> createState() => _CreateQuizFormState();
}

class _CreateQuizFormState extends State<CreateQuizForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<CreateQuizCubit>().formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Text(
            "Title:",
            style: TextStyles.font14BlackSemiBold,
          ),
          verticalSpace(5),
          CustomTextField(
            hintText: "Enter description",
            validator: (value) {
              if (value == null || value.isEmpty) return 'Description is required';
              return null;
            },
            controller: context.read<CreateQuizCubit>().titleController,
          ),
          verticalSpace(10),
          
          
        ],
      )
    );
  }
}