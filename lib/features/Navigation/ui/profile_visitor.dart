import 'package:flutter/material.dart';
import 'package:untitled2/core/routing/routes.dart';

class ProfileVisitor extends StatefulWidget {
  const ProfileVisitor({super.key});

  @override
  State<ProfileVisitor> createState() => _ProfileVisitorState();
}

class _ProfileVisitorState extends State<ProfileVisitor> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
          child: Text('Please log in to access your profile.'),
          onPressed: () {
            Navigator.of(context).pushNamed(Routes.login);
          },
        ),
    );
  }
}