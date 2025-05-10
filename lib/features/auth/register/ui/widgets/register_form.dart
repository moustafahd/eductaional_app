import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/core/helpers/helpers.dart';
import 'package:untitled2/core/helpers/regex.dart';
import 'package:untitled2/core/widgets/custom_text_field.dart';
import 'package:untitled2/features/auth/register/logic/cubit/register_cubit.dart';
import 'package:untitled2/generated/l10n.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  bool isObscureText = true;
  bool isObscureText2 = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<RegisterCubit>().formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
         children: [
          CustomTextField(
            hintText: S.of(context).emailHint,
            validator: (value) {
              if (value == null || value.isEmpty) return 'Email is required';
              if (!Regex.isEmailValid(value)) return 'Enter a valid email';
              return null;
            },
            controller: context.read<RegisterCubit>().emailController,
          ),
          verticalSpace(20),
          CustomTextField(
            hintText: S.of(context).phoneNumberHint,
            validator: (value) {
              if (value == null || value.isEmpty) return 'Phone number is required';
              if (!Regex.isPhoneNumberValid(value)) return 'Enter a valid Phone number';
              return null;
            },
            controller: context.read<RegisterCubit>().phoneNumberController,
          ),
          verticalSpace(20),
          CustomTextField(
            hintText: S.of(context).passwordHint,
            validator: (value) {
              if (value == null || value.isEmpty) return 'Password is required';
              if (!Regex.isPasswordValid(value)) return 'Enter a valid password';
              return null;
            },
            controller: context.read<RegisterCubit>().passwordController,
            isObscureText: isObscureText,
            suffixIcon: IconButton(
              icon: Icon(
                isObscureText 
                  ? Icons.visibility_off 
                  : Icons.visibility
              ),
              onPressed: () => setState(() => isObscureText = !isObscureText),
            ),
          ),
          verticalSpace(20),
          CustomTextField(
            hintText: "First Name",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'First name is required';
              }
              return null;
            },
            controller: context.read<RegisterCubit>().firstNameController,
          ),
          
          verticalSpace(20),
          CustomTextField(
            hintText: "Last Name",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Last name is required';
              }
              return null;
            },
            controller: context.read<RegisterCubit>().lastNameController,
          ),
          verticalSpace(20),
          CustomTextField(
            hintText: "Date of Birth",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Date of birth is required';
              }
              return null;
            },
            controller: context.read<RegisterCubit>().dateOfBirthController,
          ),
          verticalSpace(20),
          CustomTextField(
            hintText: "Sexe",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Sexe is required';
              }
              return null;
            },
            controller: context.read<RegisterCubit>().genderController,
          ),
          
         ],
          ),
    );
  }
}