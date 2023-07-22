import 'package:flutter/material.dart';
import 'package:project_app/Pages/loginpage.dart';
import 'package:project_app/components/my_button.dart';

class AfterSplash extends StatelessWidget {
  const AfterSplash({super.key});
 
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_typing_uninitialized_variables, non_constant_identifier_names
    
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 250, 255),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 150,
              ),
              Image.asset(
                'assets/images/imagedoc.png',
              ),

             const SizedBox(height: 100,),
              MyButton(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginPage()));
           },buttontxt: "Log In")
            ],
          ),
        ),
      ),
    );
  }
}
