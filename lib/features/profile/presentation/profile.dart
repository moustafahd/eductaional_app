import 'package:flutter/material.dart';
import 'package:untitled2/core/theming/colors.dart';
import 'package:untitled2/core/theming/styles.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height ;

    return Scaffold(
      backgroundColor: ColorManager.mainBlue,
      body: SafeArea(
        child: Stack(
          children:[  
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                    'Profile',
                    style: TextStyles.font22WhiteMedium,
                    
                  ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
              width: double.infinity,
              height: screenHeight * 0.75,
              color: ColorManager.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}