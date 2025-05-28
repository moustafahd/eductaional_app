import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/core/di/dependency_injecton.dart';
import 'package:untitled2/core/helpers/helpers.dart';
import 'package:untitled2/core/theming/colors.dart';
import 'package:untitled2/core/theming/styles.dart';
import 'package:untitled2/core/widgets/app_bar.dart';
import 'package:untitled2/core/widgets/home_widget.dart';
import 'package:untitled2/core/widgets/lesson_card.dart';
import 'package:untitled2/features/home/data/models/feedback_response.dart';
import 'package:untitled2/features/home/logic/cubit/feedback_cubit.dart';
import 'package:untitled2/features/home/logic/cubit/feedback_state.dart';
import 'package:untitled2/generated/l10n.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FeedbackCubit(getIt())..getFeedbacks(),
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  CustomAppBar(title: 'Home Page'),
                  verticalSpace(10),
                  HomeWidget(),
                  verticalSpace(20),
                  Text(
                    "Feedbacks:",
                    textAlign: TextAlign.start,
                    style: TextStyles.font18BlackSemiBold,
                  ),
                  verticalSpace(10),
                  BlocBuilder<FeedbackCubit, FeedbackState>(
                        buildWhen: (_, currentState) {
                          return currentState is FeedbackLoading ||
                              currentState is FeedbackSuccess ||
                              currentState is FeedbackError;
                        },
                        builder: (context, state) {
                          if (state is FeedbackLoading) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          } else if (state is FeedbackSuccess) {
                            return ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: state.feedbacksResponse.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  height: 100,
                                  width: double.infinity,
                                  margin: const EdgeInsets.symmetric(vertical: 8.0),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: ColorManager.mainBlue),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              state.feedbacksResponse[index].userInfo?.nom ?? '',
                                              style: TextStyles.font18BlackSemiBold
                                            ),
                                            horizontalSpace(5),
                                            Text(
                                              state.feedbacksResponse[index].userInfo?.prenom ?? '',
                                              style: TextStyles.font18BlackSemiBold
                                            ),
                                            
                                          ],
                                        ),
                                        verticalSpace(10),
                                        Text(
                                          state.feedbacksResponse[index].content,
                                          style: TextStyles.font14GreyRegular,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                  )
                                );
                              },
                            );
                          } else if (state is FeedbackError) {
                            return const Text("yuruyr");
                          }
                          return const SizedBox.shrink();
                        },
                      ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
