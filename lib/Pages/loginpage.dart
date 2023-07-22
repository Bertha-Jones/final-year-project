import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_app/Pages/loader_screen.dart';
import 'package:project_app/components/my_button.dart';
import 'package:project_app/components/my_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_typing_uninitialized_variables

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 250, 255),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(30),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Image.asset(
                      'assets/images/imagedoc.png',
                      width: 100,
                      height: 100,
                    ),

                    const SizedBox(height: 60),
                    //username textfield
                    const MyTextField(
                      usernameLabel: 'username',

                      //password textfield
                      passwordLabel: 'password',
                    ),
                    const SizedBox(height: 10),

                    //forgot password
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'forgot password?',
                            style: GoogleFonts.poppins(
                                fontStyle: FontStyle.italic,
                                color: const Color.fromARGB(255, 21, 61, 111)),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(
                      height: 40,
                    ),

                    //login button
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: MyButton(onTap: 
                        () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoaderScreen()));
                          }, buttontxt: "Log In")),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
