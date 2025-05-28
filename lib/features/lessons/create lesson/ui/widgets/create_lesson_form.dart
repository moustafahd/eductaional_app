
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/core/helpers/helpers.dart';
import 'package:untitled2/core/theming/styles.dart';
import 'package:untitled2/core/widgets/custom_text_field.dart';
import 'package:untitled2/features/lessons/create%20lesson/logic/cubit/create_lesson_cubit.dart';

class CreateLessonForm extends StatefulWidget {
  const CreateLessonForm({super.key});

  @override
  State<CreateLessonForm> createState() => _CreateLessonFormState();
}

class _CreateLessonFormState extends State<CreateLessonForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<CreateLessonCubit>().formKey,
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
            hintText: "Enter title",
            validator: (value) {
              if (value == null || value.isEmpty) return 'Title is required';
              return null;
            },
            controller: context.read<CreateLessonCubit>().titleController,
          ),
          verticalSpace(10),
          Text(
            "Description:",
            style: TextStyles.font14BlackSemiBold,
          ),
          verticalSpace(5),
          CustomTextField(
            hintText: "Enter description",
            validator: (value) {
              if (value == null || value.isEmpty) return 'Description is required';
              return null;
            },
            controller: context.read<CreateLessonCubit>().descriptionController,
          ),
          verticalSpace(10),
          Text(
            "Duration:",
            style: TextStyles.font14BlackSemiBold,
          ),
          verticalSpace(5),
          CustomTextField(
            hintText: "Enter duration",
            validator: (value) {
              if (value == null || value.isEmpty) return 'Duration is required';
              return null;
            },
            controller: context.read<CreateLessonCubit>().durationController,
          ),
          verticalSpace(10),
          Text(
            "Lesson type:",
            style: TextStyles.font14BlackSemiBold,
          ),
          verticalSpace(5),
          CustomTextField(
            hintText: "Enter lesson type",
            validator: (value) {
              if (value == null || value.isEmpty) return 'Lesson type is required';
              return null;
            },
            controller: context.read<CreateLessonCubit>().lessonTypeController,
          ),
          verticalSpace(10),
          Text(
            "Lesson URL:",
            style: TextStyles.font14BlackSemiBold,
          ),
          verticalSpace(5),
          CustomTextField(
            hintText: "Enter URL",
            validator: (value) {
              if (value == null || value.isEmpty) return 'URL is required';
              return null;
            },
            controller: context.read<CreateLessonCubit>().lessonUrlController,
          ),
          Text(
            "Ordre:",
            style: TextStyles.font14BlackSemiBold,
          ),
          verticalSpace(5),
          CustomTextField(
            hintText: "Enter order",
            validator: (value) {
              if (value == null || value.isEmpty) return 'Order is required';
              return null;
            },
            controller: context.read<CreateLessonCubit>().orderController,
          ),
          
        ],
      )
    );
  }
}