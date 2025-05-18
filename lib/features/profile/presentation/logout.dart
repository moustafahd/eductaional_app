import 'package:flutter/material.dart';
import 'package:untitled2/core/helpers/constants.dart';
import 'package:untitled2/core/helpers/extensions.dart';
import 'package:untitled2/core/helpers/shared_preference.dart';
import 'package:untitled2/core/routing/routes.dart';

class Logout extends StatelessWidget {
  const Logout({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        clearToken();
        context.pushReplacementNamed(Routes.login, );
      },
      child: const Row(
        children: [
          Icon(Icons.logout, color: Colors.red),
          Text('Log Out', style: TextStyle(color: Colors.red)),
        ],
      ),
    );
  }
}

void clearToken (){
  SharedPreferenceHelper.setData(SharedPreferencesKeys.accessToken, '');
  SharedPreferenceHelper.setData(SharedPreferencesKeys.refreshToken, '');
}
