import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/core/di/dependency_injecton.dart';
import 'package:untitled2/core/helpers/helpers.dart';
import 'package:untitled2/core/widgets/app_bar.dart';
import 'package:untitled2/features/formations/My%20formations/logic/cubit/my_formation_cubit.dart';
import 'package:untitled2/features/formations/My%20formations/logic/cubit/my_formation_state.dart';
import 'package:untitled2/features/formations/My%20formations/ui/widgets/my_formations_item.dart';

class MyFormationScreen extends StatelessWidget {
  const MyFormationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MyFormationCubit(getIt())..getMyFormations(),
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
                      const CustomAppBar(title: "My Courses"),
                      verticalSpace(20),
                      BlocBuilder<MyFormationCubit, MyFormationState>(
                        buildWhen: (_, currentState) {
                          return currentState is MyFormationLoading ||
                              currentState is MyFormationSuccess ||
                              currentState is MyFormationError;
                        },
                        builder: (context, state) {
                          if (state is MyFormationLoading) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          } else if (state is MyFormationSuccess) {
                            return ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: state.myFormationsResponse.length,
                              itemBuilder: (context, index) {
                                return MyFormationsItem(
                                  formationItem:
                                      state.myFormationsResponse[index],
                                );
                              },
                            );
                          } else if (state is MyFormationError) {
                            return const Text("yuruyr");
                          }
                          return const SizedBox.shrink();
                        },
                      ),
                    ],
                  ),
                ),
                // Positioned(
                //   bottom: 20,
                //   left: 0,
                //   right: 0,

                //   child: Builder(
                //     builder:
                //         (context) => PrimaryButton(
                //           buttonText: "Submit",
                //           onPressed: () => validatAndCreateFormation(context),
                //         ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
