import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/core/di/dependency_injecton.dart';
import 'package:untitled2/core/widgets/app_bar.dart';
import 'package:untitled2/core/widgets/lesson_card.dart';
import 'package:untitled2/core/widgets/search_bar.dart';
import 'package:untitled2/features/formations/formation%20details/formations_details.dart';
import 'package:untitled2/features/search/logic/cubit/search_cubit.dart';
import 'package:untitled2/features/search/logic/cubit/search_state.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubit(getIt())..getAllFormations(),
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
                      // const CustomAppBar(title: "My Courses"),
                      // verticalSpace(20),
                      CustomSearchBar(),
                      BlocBuilder<SearchCubit, SearchState>(
                        buildWhen: (_, currentState) {
                          return currentState is AllFormationLoading ||
                              currentState is AllFormationSuccess ||
                              currentState is AllFormationError;
                        },
                        builder: (context, state) {
                          if (state is AllFormationLoading) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          } else if (state is AllFormationSuccess) {
                            return ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: state.allFormationsResponse.length,
                              itemBuilder: (context, index) {
                                return LessonCard(
                                  title: state.allFormationsResponse[index].title, 
                                  duration: state.allFormationsResponse[index].category, 
                                  onTap: () { 
                                    Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                        builder: (context) => FormationsDetails(
                                          formationItem: state.allFormationsResponse[index],
                                        ),
                                      ),
                                    );
                                   },
                                );
                                
                              },
                            );
                          } else if (state is AllFormationError) {
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