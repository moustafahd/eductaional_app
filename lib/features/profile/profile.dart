import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled2/core/helpers/helpers.dart';
import 'package:untitled2/features/profile/data/models/profile_response.dart';
import 'package:untitled2/features/profile/logic/cubit/profile_cubit.dart';
import 'package:untitled2/features/profile/logic/cubit/profile_state.dart';
import 'package:untitled2/features/profile/presentation/logout.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF007AFF), // Blue background
      body: Stack(
        children: [
          // White container at the bottom
          Positioned(
            top: MediaQuery.of(context).size.height * 0.2,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 60),
                  BlocBuilder<ProfileCubit, ProfileState>(
                    buildWhen:
                        (previous, current) =>
                            current is ProfileLoading ||
                            current is ProfileSuccess ||
                            current is ProfileError,
                    builder: (context, state) {
                      return state.maybeWhen(
                        profileLoading: () {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        },
                        profileSuccess: (profileResponseModel) {
                          return Column(
                            children: [
                              Text(
                                profileResponseModel.userName ?? 'unkown user',
                                style: const TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              verticalSpace(10),
                              Text(
                                profileResponseModel.userId.toString() ?? 'unkown',
                                style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          );
                        },
                        profileError: (error) {
                          return Text("error: $error");
                        },
                        orElse: () {
                          return Text("data");
                        },
                      );
                    },
                  ),

                  verticalSpace(20),
                  const ProfileOption(
                    icon: Icons.person_outline,
                    title: 'Personal Information',
                    iconBgColor: Color(0xFFE8F0FF),
                    iconColor: Color(0xFF4A74F0),
                  ),
                  verticalSpace(20),
                  const ProfileOption(
                    icon: Icons.emoji_events_outlined,
                    title: 'Diplomas & Achievements',
                    iconBgColor: Color(0xFFDFF7E8),
                    iconColor: Color(0xFF45C486),
                  ),
                  verticalSpace(20),
                  const ProfileOption(
                    icon: Icons.account_balance_wallet_outlined,
                    title: 'Payment',
                    iconBgColor: Color(0xFFFFEAEA),
                    iconColor: Color(0xFFFF5A5F),
                  ),
                  verticalSpace(20),
                  const ProfileOption(
                    icon: Icons.settings_outlined,
                    title: 'Settings',
                    iconBgColor: Color(0xFFE0F7FA),
                    iconColor: Color(0xFF26C6DA),
                  ),
                  verticalSpace(40),
                  Center(child: const Logout()),
                ],
              ),
            ),
          ),

          // Positioned Avatar at the boundary of blue & white
          Positioned(
            top:
                MediaQuery.of(context).size.height *
                0.15, // halfway into blue and white
            left: 0,
            right: 0,
            child: Center(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 46,
                  backgroundImage: AssetImage('assets/images/avatar.png'),
                  backgroundColor: Colors.transparent,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileOption extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color iconBgColor;
  final Color iconColor;

  const ProfileOption({
    required this.icon,
    required this.title,
    required this.iconBgColor,
    required this.iconColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Container(
            width: 40.h,
            height: 40.h,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: iconBgColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: iconColor),
          ),
          title: Text(
            title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          onTap: () {
            // Handle tap
          },
        ),
        verticalSpace(5),
        const Divider(height: 10, thickness: 0.5),
      ],
    );
  }
}
