import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_app/Pages/book_appointment.dart';
import 'package:project_app/Pages/homepage.dart';
import 'package:project_app/components/my_button.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 250, 255),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.arrow_back),
                    ),
                  ),
                  const SizedBox(width: 80),
                  Text(
                    'Doctor Details',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                height: 220,
                width: 360,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: const Color.fromARGB(255, 235, 235, 235),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 100,
                        decoration: const BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                            image: AssetImage('assets/images/image.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 30.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dr. John Doe',
                              style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: const Color.fromARGB(255, 79, 79, 79)),
                            ),
                            const SizedBox(height: 15.0),
                            Row(
                              children: [
                                const Icon(
                                  Icons.healing,
                                  size: 16,
                                  color: Color.fromARGB(255, 129, 129, 129),
                                ),
                                const SizedBox(width: 13.0),
                                Text(
                                  'Dentist',
                                  style: GoogleFonts.poppins(
                                      fontSize: 15.5,
                                      fontWeight: FontWeight.w500,
                                      color: const Color.fromARGB(
                                          255, 130, 130, 130)),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20.0),
                            Row(
                              children: [
                                const Icon(
                                  Icons.person,
                                  size: 16,
                                  color: Color.fromARGB(255, 129, 129, 129),
                                ),
                                const SizedBox(width: 13.0),
                                Text('100+ Patients',
                                    style: GoogleFonts.poppins(
                                        fontSize: 15.5,
                                        fontWeight: FontWeight.w500,
                                        color: const Color.fromARGB(
                                            255, 130, 130, 130))),
                              ],
                            ),
                            const SizedBox(height: 20.0),
                            Row(
                              children: [
                                const Icon(
                                  Icons.medication,
                                  size: 16,
                                  color: Color.fromARGB(255, 129, 129, 129),
                                ),
                                const SizedBox(width: 13.0),
                                Text(
                                  '15 Years Experience',
                                  style: GoogleFonts.poppins(
                                      fontSize: 15.5,
                                      fontWeight: FontWeight.w500,
                                      color: const Color.fromARGB(
                                          255, 130, 130, 130)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Container(
                height: 200,
                width: 360,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: const Color.fromARGB(255, 235, 235, 235),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'About Doctor',
                        style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 79, 79, 79)),
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        'Lorem ipsum dolor sit,Lorem ipsum dolor sit,Lorem ipsum dolor sit,Lorem ipsum dolor sitLorem ipsum dolor sit Lorem ipsum dolor sit Lorem ipsum dolor sit  ',
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: const Color.fromARGB(255, 121, 121, 121)),
                      ),
                      const SizedBox(height: 8.0),
                      GestureDetector(
                        onTap: () {
                          // Perform "Read More" action
                        },
                        child: Text(
                          'Read More',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15,),
             SingleChildScrollView(
  child: Container(
    height: 150,
    width: 320,
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 255, 255, 255),
      borderRadius: BorderRadius.circular(8),
      border: Border.all(
        color: const Color.fromARGB(255, 235, 235, 235),
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Time available',
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 79, 79, 79),
            ),
          ),
        ),
        const SizedBox(height: 20,),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
              color: const Color.fromARGB(255, 235, 235, 235),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      //maxHeight: 100,
                      children: const [
                        Text('9:00 AM'),
                        SizedBox(width: 20),
                        Text('10:00 AM'),
                        SizedBox(width: 20),
                        Text('11:00 AM'),
                        SizedBox(width: 20),
                        Text('12:00 PM'),
                        SizedBox(width: 20),
                        Text('1:00 PM'),
                        SizedBox(width: 20),
                        Text('2:00 PM'),
                        SizedBox(width: 20),
                        Text('3:00 PM'),
                        SizedBox(width: 20),
                        Text('4:00 PM'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  ),
),
             const SizedBox(height: 30,),
              Center(
                child: MyButton(onTap:  (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> BookAppointmentScreen()));
                         },buttontxt: "Book Appointment"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
