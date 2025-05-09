import 'package:flutter/material.dart';
import 'package:untitled2/core/di/dependency_injecton.dart';
import 'package:untitled2/core/routing/app_router.dart';
import 'package:untitled2/educational_app.dart';

void main() {
  setupGetIt();
  runApp( EducationalApp(
    appRouter: AppRouter(),
  ));
}