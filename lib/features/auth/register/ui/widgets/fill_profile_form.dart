import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/core/helpers/helpers.dart';
import 'package:untitled2/features/auth/register/logic/cubit/register_cubit.dart';

class FillProfileForm extends StatefulWidget {
  const FillProfileForm({super.key});

  @override
  State<FillProfileForm> createState() => _FillProfileFormState();
}

class _FillProfileFormState extends State<FillProfileForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<RegisterCubit>().formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          TextFormField(
            controller: context.read<RegisterCubit>().firstNameController,
            decoration: InputDecoration(labelText: 'First Name'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'First name is required';
              }
              return null;
            },
          ),
          verticalSpace(20),
          TextFormField(
            controller: context.read<RegisterCubit>().lastNameController,
            decoration: InputDecoration(labelText: 'Last Name'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Last name is required';
              }
              return null;
            },
          ),
          verticalSpace(20),
          TextFormField(
            controller: context.read<RegisterCubit>().dateOfBirthController,
            decoration: InputDecoration(labelText: 'Date of Birth'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Date of birth name is required';
              }
              return null;
            },
          ),
          verticalSpace(20),
          TextFormField(
            controller: context.read<RegisterCubit>().genderController,
            decoration: InputDecoration(labelText: 'Sexe'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Sexe is required';
              }
              return null;
            },
          ),
          
          
        ],
      ),
    );
  }
}