import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/core/helpers/helpers.dart';
import 'package:untitled2/core/theming/styles.dart';
import 'package:untitled2/core/widgets/custom_text_field.dart';
import 'package:untitled2/features/quiz/add%20quiz%20questions/logic/cubit/add_quiz_questions_cubit.dart';

class AddQuizQuestionsAndChoicesForm extends StatefulWidget {
  const AddQuizQuestionsAndChoicesForm({super.key});

  @override
  State<AddQuizQuestionsAndChoicesForm> createState() => _AddQuizQuestionsAndChoicesFormState();
}

class _AddQuizQuestionsAndChoicesFormState extends State<AddQuizQuestionsAndChoicesForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<AddQuizQuestionsCubit>().formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Text(
            "Question :",
            style: TextStyles.font14BlackSemiBold,
          ),
          verticalSpace(5),
          CustomTextField(
            hintText: "Enter a Question ",
            validator: (value) {
              if (value == null || value.isEmpty) return 'Question is required';
              return null;
            },
            controller: context.read<AddQuizQuestionsCubit>().contentController,
          ),
          verticalSpace(10),
          Text(
            "Order :",
            style: TextStyles.font14BlackSemiBold,
          ),
          verticalSpace(5),
          CustomTextField(
            hintText: "Enter ordre",
            validator: (value) {
              if (value == null || value.isEmpty) return 'Ordre is required';
              return null;
            },
            controller: context.read<AddQuizQuestionsCubit>().orderController,
          ),
          verticalSpace(10),
          Text(
            "Order :",
            style: TextStyles.font14BlackSemiBold,
          ),
          verticalSpace(5),
          ...List.generate(
            context.read<AddQuizQuestionsCubit>().choicesControllers.length,
            (index) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextField(
                  hintText: "Enter choice ${index + 1}",
                  validator: (value) {
                    if (value == null || value.isEmpty) return 'Choice ${index + 1} is required';
                    return null;
                  },
                  controller: context.read<AddQuizQuestionsCubit>().choicesControllers[index],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: context.read<AddQuizQuestionsCubit>().isCorrectChoices[index],
                      onChanged: (value) {
                        setState(() {
                          context.read<AddQuizQuestionsCubit>().isCorrectChoices[index] = value ?? false;
                        });
                      },
                    ),
                    Text("Is Correct Choice"),
                  ],
                ),
                verticalSpace(10),
              ],
            ),
          ),
          
        ],
      )
    );;
  }
}