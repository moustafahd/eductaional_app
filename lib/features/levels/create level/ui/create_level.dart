import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/core/di/dependency_injecton.dart';
import 'package:untitled2/core/helpers/helpers.dart';
import 'package:untitled2/core/widgets/app_bar.dart';
import 'package:untitled2/core/widgets/primary_button.dart';
import 'package:untitled2/features/levels/create%20level/logic/cubit/create_level_cubit.dart';
import 'package:untitled2/features/levels/create%20level/ui/widgets/create_level_bloc_listener.dart';
import 'package:untitled2/features/levels/create%20level/ui/widgets/create_level_form.dart';


class CreateLevelScreen extends StatelessWidget {
  const CreateLevelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreateLevelCubit(getIt()),
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
                      const CustomAppBar(title: "Create New Level"),
                      verticalSpace(20),
                      CreateLevelForm(),
                      verticalSpace(20),
                      const CreateLevelBlocListener(),
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
                          onPressed: () {
                            validatAndCreateLevel(context);
                            Navigator.pop(context);
                          } 
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

  void validatAndCreateLevel(BuildContext context) {
    if (context.read<CreateLevelCubit>().formKey.currentState!.validate()) {
      context.read<CreateLevelCubit>().emitCreateLevelStates();
    }
  }
}
