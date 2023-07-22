import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_app/Pages/homepage.dart';
import 'package:project_app/components/my_button.dart';

import 'book_appointment.dart';

class ConfirmAppointment extends StatelessWidget {
  final DateTime selectedDate;
  final String selectedTime;
  final AppointmentType selectedAppointmentType;

  const ConfirmAppointment({
    Key? key,
    required this.selectedDate,
    required this.selectedTime,
    required this.selectedAppointmentType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 250, 255),
      appBar: AppBar(
        title: const Text('Confirmation'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/booking.png'),
              const SizedBox(height: 16.0),
              Text(
                'Booking Successfully Completed',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4.0),
              Text(
                'Booking Confirmed!',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: const Color.fromARGB(255, 109, 109, 109),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 25.0),
              Text(
                'Details of the Appointment:',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20.0),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 75.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Date:',
                            style: GoogleFonts.poppins(fontSize: 14),
                          ),
                          const SizedBox(width: 15.0),
                          Expanded(
                            child: Text(
                              selectedDate.toString(),
                              style: GoogleFonts.poppins(fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15.0),
                      Row(
                        children: [
                          Text(
                            'Time:',
                            style: GoogleFonts.poppins(fontSize: 14),
                          ),
                         const  SizedBox(width: 15.0),
                          Expanded(
                            child: Text(
                              selectedTime,
                              style: GoogleFonts.poppins(fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                     const  SizedBox(height: 8.0),
                      Row(
                        children: [
                          Text(
                            'Appointment Type:',
                            style: GoogleFonts.poppins(fontSize: 14),
                          ),
                         const  SizedBox(width: 8.0),
                          Expanded(
                            child: Text(
                              selectedAppointmentType.toString().split('.').last,
                              style: GoogleFonts.poppins(fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10,),

                      Row(
                        children: [
                          Text(
                            'Location:',
                            style: GoogleFonts.poppins(fontSize: 14),
                          ),
                         const  SizedBox(width: 8.0),
                          Expanded(
                            child: Text(
                              'School Clinic',
                              style: GoogleFonts.poppins(fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
             const  SizedBox(height: 150,),
               MyButton(onTap:  (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
                         },buttontxt: "Back Home"),
            ],
           
          ),
        ),
      ),
      
    );
  }
}