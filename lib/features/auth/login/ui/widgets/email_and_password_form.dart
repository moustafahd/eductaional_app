import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/core/helpers/regex.dart';
import 'package:untitled2/core/widgets/custom_text_field.dart';
import 'package:untitled2/features/auth/login/logic/cubit/login_cubit.dart';
import 'package:untitled2/generated/l10n.dart';

// class EmailAndPasswordForm extends StatefulWidget {
//   const EmailAndPasswordForm({super.key});

//   @override
//   State<EmailAndPasswordForm> createState() => _EmailAndPasswordFormState();
// }

// class _EmailAndPasswordFormState extends State<EmailAndPasswordForm> {
//   bool isObsecureText = true;
//   bool isEmailValid = true;
//   bool isPasswordValid = true;
//   String textValidation = '';
//   late TextEditingController passwordController;
//   late TextEditingController emailController;

//   @override
//   void initState() {
//     super.initState();
//     passwordController = context.read<LoginCubit>().passwordController;
//     passwordController.addListener(() {
//       setState(() {
//         isPasswordValid = Regex.isPasswordValid(passwordController.text);
//       });
//     });
//      emailController = context.read<LoginCubit>().emailController;
//     emailController.addListener(() {
//       setState(() {
//         isEmailValid = Regex.isEmailValid(emailController.text);
//       });
//     });
//     validate();
//   }

//   void validate() {
//     if(!isEmailValid && !isPasswordValid){
//             textValidation = "Please enter a valid email and password";
//           }else if(!isEmailValid){
//             textValidation = "Please enter a valid email";
          
//           }else if(!isPasswordValid){
//             textValidation = "Please enter a valid password";}
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: context.read<LoginCubit>().formKey,
//       child: Column(
//         children: [
//           CustomTextField(hintText: S.of(context).emailHint, 
//           validator: (value){
//             if (value == null || value.isEmpty || !Regex.isEmailValid(value)) {
//               return "Please enter a valid email";
//             } 
//             return null;
//           },
//           controller: context.read<LoginCubit>().emailController,
//           ),
//           CustomTextField(
//             validator: (value){
//             if (value == null || value.isEmpty || !Regex.isPasswordValid(value)) {
//               return "Please enter a valid password";
//             } 
//             return null;
//           },
//             controller: context.read<LoginCubit>().passwordController,
//             hintText: S.of(context).passwordHint,
//             isObscureText: isObsecureText,
//             suffixIcon: GestureDetector(
//               onTap: () {
//                 setState(() {
//                   isObsecureText = !isObsecureText;
//                 });
//               },
//               child: Icon(
//                 isObsecureText
//                     ? Icons.visibility_off_rounded
//                     : Icons.visibility_rounded,
//               ),
//             ),
//           ),
          
//         ],
//       ),
//     );
//   }


// }

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