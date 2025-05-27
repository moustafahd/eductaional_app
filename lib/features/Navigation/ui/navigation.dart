import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/core/di/dependency_injecton.dart';
import 'package:untitled2/features/Navigation/logic/cubit/navigation_cubit.dart';
import 'package:untitled2/features/Navigation/logic/cubit/navigation_state.dart';
import 'package:untitled2/features/formations/My%20formations/ui/my_formations.dart';
import 'package:untitled2/features/home/homepage.dart';
import 'package:untitled2/features/profile/logic/cubit/profile_cubit.dart';
import 'package:untitled2/features/profile/profile.dart';
import 'package:untitled2/features/search/search_screen.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});
  

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  // Declare screens here in the State class — cleaner and private
  final List<Widget> _screens = [
    const MyHomePage(),
    const SearchScreen(),
    MyFormationScreen(),
    //isInstractor() ? const  : const CreateFormationScreen(),
     
    BlocProvider(
    create: (context) => ProfileCubit(getIt())..getProfileData(),
    child: const Profile(),
  ),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (context, state) {
        final currentIndex = (state is NavigationTabChanged) ? state.index : 0;

        return Scaffold(
          body: _screens[currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (index) => context.read<NavigationCubit>().changeTab(index),
            selectedItemColor: const Color(0xFF007AFF),
            unselectedItemColor: Colors.grey,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Discover'),
              BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Learn'),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
            ],
          ),
        );
      },
    );
  }
}
