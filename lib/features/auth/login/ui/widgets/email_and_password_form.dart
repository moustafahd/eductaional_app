import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/core/helpers/helpers.dart';
import 'package:untitled2/core/helpers/regex.dart';
import 'package:untitled2/core/widgets/custom_text_field.dart';
import 'package:untitled2/features/auth/login/logic/cubit/login_cubit.dart';
import 'package:untitled2/generated/l10n.dart';



class EmailAndPasswordForm extends StatefulWidget {
  const EmailAndPasswordForm({super.key});

  @override
  State<EmailAndPasswordForm> createState() => _EmailAndPasswordFormState();
}

class _EmailAndPasswordFormState extends State<EmailAndPasswordForm> {
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    
    
    return Form(
      key: context.read<LoginCubit>().formKey,
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
            controller: context.read<LoginCubit>().emailController,
          ),
          verticalSpace(20),
          CustomTextField(
            hintText: S.of(context).passwordHint,
            validator: (value) {
              if (value == null || value.isEmpty) return 'Password is required';
              if (!Regex.isPasswordValid(value)) return 'Enter a valid password';
              return null;
            },
            controller: context.read<LoginCubit>().passwordController,
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
        ],
      ),
    );
  }
}