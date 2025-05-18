import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/core/helpers/helpers.dart';
import 'package:untitled2/core/theming/styles.dart';
import 'package:untitled2/core/widgets/custom_text_field.dart';
import 'package:untitled2/features/formations/create%20formation/logic/cubit/create_formation_cubit.dart';

class CreateFormationForm extends StatefulWidget {
  const CreateFormationForm({super.key});

  @override
  State<CreateFormationForm> createState() => _CreateFormationFormState();
}

class _CreateFormationFormState extends State<CreateFormationForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<CreateFormationCubit>().formKey,
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
            controller: context.read<CreateFormationCubit>().titleController,
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
            controller: context.read<CreateFormationCubit>().descriptionController,
          ),
          verticalSpace(10),
          Text(
            "Category:",
            style: TextStyles.font14BlackSemiBold,
          ),
          verticalSpace(5),
          CustomTextField(
            hintText: "Enter category",
            validator: (value) {
              if (value == null || value.isEmpty) return 'Category is required';
              return null;
            },
            controller: context.read<CreateFormationCubit>().categoryController,
          ),
          verticalSpace(10),
          Text(
            "Instractor ID:",
            style: TextStyles.font14BlackSemiBold,
          ),
          verticalSpace(5),
          CustomTextField(
            hintText: "Enter instructor ID",
            validator: (value) {
              if (value == null || value.isEmpty) return 'Instructor ID is required';
              return null;
            },
            controller: context.read<CreateFormationCubit>().instractorIdController,
          ),
        ],
      )
    );
  }
}