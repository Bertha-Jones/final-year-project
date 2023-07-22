import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String usernameLabel;
  final String passwordLabel;

  const MyTextField({
    required this.usernameLabel,
    required this.passwordLabel,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: SizedBox(
        width: 300,
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: usernameLabel,
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(width: 1.5, color: Color.fromARGB(255, 21, 61, 111)),
                ),
                focusedBorder:const  OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 21, 61, 111)),
                ),
              ),
            ),
           const  SizedBox(height: 20.0),
            TextField(
              decoration: InputDecoration(
                labelText: passwordLabel,
                enabledBorder:const OutlineInputBorder(
                  borderSide: BorderSide(width: 1.5, color: Color.fromARGB(255, 21, 61, 111)),
                ),
                focusedBorder:const  OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 21, 61, 111)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
