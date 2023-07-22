import 'package:flutter/material.dart';
import 'package:project_app/Pages/after_splash.dart';
//import 'package:project_app/Pages/loginpage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AfterSplash(),
    );
  }
}
