import 'package:flutter/material.dart';
import 'package:project_app/Pages/homepage.dart';


class LoaderScreen extends StatelessWidget {
  const LoaderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    navigateToHomePage() {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>  HomePage()),
      );
    }

    // Call the navigation function after a certain duration or completion of a task
    Future.delayed (Duration (seconds: 2), navigateToHomePage);

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 250, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
            ),
            SizedBox(height: 16.0),
            Text(
              'Connecting you to doctors around You',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(131, 0, 0, 0)
              ),
            ),
          ],
        ),
      ),
    );
  }
}