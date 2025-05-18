import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/core/di/dependency_injecton.dart';
import 'package:untitled2/core/helpers/helpers.dart';
import 'package:untitled2/core/widgets/app_bar.dart';
import 'package:untitled2/core/widgets/primary_button.dart';
import 'package:untitled2/features/formations/create%20formation/logic/cubit/create_formation_cubit.dart';
import 'package:untitled2/features/formations/create%20formation/ui/widgets/create_formation_bloc_listener.dart';
import 'package:untitled2/features/formations/create%20formation/ui/widgets/create_formation_form.dart';

class CreateFormationScreen extends StatelessWidget {
  const CreateFormationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreateFormationCubit(getIt()),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Stack(
              fit: StackFit.expand,
              children: [
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomAppBar(title: "Create New Course"),
                      verticalSpace(20),
                      CreateFormationForm(),
                      verticalSpace(20),
                      const CreateFormationBlocListener(),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 0,
                  right: 0,

                  child: Builder(
                    builder:
                        (context) => PrimaryButton(
                          buttonText: "Submit",
                          onPressed: () => validatAndCreateFormation(context),
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validatAndCreateFormation(BuildContext context) {
    if (context.read<CreateFormationCubit>().formKey.currentState!.validate()) {
      context.read<CreateFormationCubit>().emitCreateFormationStates();
    }
  }
}
