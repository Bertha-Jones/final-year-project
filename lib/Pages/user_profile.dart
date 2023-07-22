import 'package:flutter/material.dart';

// ignore: camel_case_types
class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: const Text('User Profile'),
      elevation: 0,
    ));
  }
}
