import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/core/helpers/helpers.dart';
import 'package:untitled2/core/theming/styles.dart';
import 'package:untitled2/core/widgets/custom_text_field.dart';
import 'package:untitled2/features/levels/create%20level/logic/cubit/create_level_cubit.dart';

class CreateLevelForm extends StatefulWidget {
  const CreateLevelForm({super.key});

  @override
  State<CreateLevelForm> createState() => _CreateLevelFormState();
}

class _CreateLevelFormState extends State<CreateLevelForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<CreateLevelCubit>().formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
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
            controller: context.read<CreateLevelCubit>().descriptionController,
          ),
          verticalSpace(10),
          Text(
            "Ordre:",
            style: TextStyles.font14BlackSemiBold,
          ),
          verticalSpace(5),
          CustomTextField(
            hintText: "Enter ordre",
            validator: (value) {
              if (value == null || value.isEmpty) return 'Ordre is required';
              return null;
            },
            controller: context.read<CreateLevelCubit>().ordreController,
          ),
          
        ],
      )
    );
  }
}