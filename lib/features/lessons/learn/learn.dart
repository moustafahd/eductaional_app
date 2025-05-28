import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/core/di/dependency_injecton.dart';
import 'package:untitled2/core/helpers/helpers.dart';
import 'package:untitled2/core/widgets/app_bar.dart';
import 'package:untitled2/core/widgets/lesson_card.dart';
import 'package:untitled2/features/home/video_lesson.dart';
import 'package:untitled2/features/lessons/learn/logic/cubit/learn_cubit.dart';
import 'package:untitled2/features/lessons/learn/logic/cubit/learn_state.dart';

class Learn extends StatelessWidget {
  const Learn({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LearnCubit(getIt())..getLearns(),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomAppBar(title: "Learn"),
                  verticalSpace(20),
                  BlocBuilder<LearnCubit, LearnState>(
                    buildWhen: (_, currentState) {
                      return currentState is LearnLoading ||
                          currentState is LearnSuccess ||
                          currentState is LearnError;
                    },
                    builder: (context, state) {
                      if (state is LearnLoading) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      } else if (state is LearnSuccess) {
                        return ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: state.learnsResponse.length,
                          itemBuilder: (context, index) {
                            return LessonCard(
                              title: state.learnsResponse[index].title, 
                              duration: state.learnsResponse[index].lessonType, 
                              onTap: (){
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => VideoLesson(lessonItem: state.learnsResponse[index],
                                      
                                    ),
                                  ),
                                );

                              }
                              );
                            
                          },
                        );
                      } else if (state is LearnError) {
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