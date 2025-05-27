import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/core/di/dependency_injecton.dart';
import 'package:untitled2/core/helpers/helpers.dart';
import 'package:untitled2/core/helpers/shared_preference.dart';
import 'package:untitled2/core/networking/api_constants.dart';
import 'package:untitled2/core/widgets/app_bar.dart';
import 'package:untitled2/core/widgets/primary_button.dart';
import 'package:untitled2/features/levels/My%20levels/logic/cubit/my_levels_cubit.dart';
import 'package:untitled2/features/levels/My%20levels/logic/cubit/my_levels_state.dart';
import 'package:untitled2/features/levels/My%20levels/ui/widgets/my_levels_item.dart';

class MyLevelScreen extends StatelessWidget {
  const MyLevelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MyLevelCubit(getIt())..getMyLevels(),
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
                      const CustomAppBar(title: "My Levels"),
                      verticalSpace(20),
                      BlocBuilder<MyLevelCubit, MyLevelState>(
                        buildWhen: (_, currentState) {
                          return currentState is MyLevelLoading ||
                              currentState is MyLevelSuccess ||
                              currentState is MyLevelError;
                        },
                        builder: (context, state) {
                          if (state is MyLevelLoading) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          } else if (state is MyLevelSuccess) {
                            return ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: state.myLevelsResponse.length,
                              itemBuilder: (context, index) {
                                return MyLevelsItem(

                                  
                                  levelItem:
                                      state.myLevelsResponse[index],
                                );
                              },
                            );
                          } else if (state is MyLevelError) {
                            return const Text("yuruyr");
                          }
                          return const SizedBox.shrink();
                        },
                      ),
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
                          buttonText: "Add new Level",
                          onPressed: () {},
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
}
