import 'package:flutter/material.dart';
import 'package:project_app/components/my_button.dart';
import 'package:project_app/Pages/confirm_appointment.dart';

enum AppointmentType {
  inPerson,
  online,
}

class BookAppointmentScreen extends StatefulWidget {
  const BookAppointmentScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _BookAppointmentScreenState createState() => _BookAppointmentScreenState();
}

class _BookAppointmentScreenState extends State<BookAppointmentScreen> {
  DateTime? selectedDate;
  String? selectedTime;
  AppointmentType? selectedAppointmentType;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2030),
    );
    if (picked != null) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  Widget _buildTimeContainer(String time) {
    final isSelected = selectedTime == time;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedTime = isSelected ? null : time;
        });
      },
      child: Container(
        height: 50,
        width: 100,
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.blue),
        ),
        child: Center(
          child: Text(
            time,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book Appointment'),
      ),
      backgroundColor: const Color.fromARGB(255, 247, 250, 255),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           const  Text(
              'Select Time:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: [
                _buildTimeContainer('9:00 AM'),
                _buildTimeContainer('10:00 AM'),
                _buildTimeContainer('11:00 AM'),
                _buildTimeContainer('12:00 PM'),
                _buildTimeContainer('1:00 PM'),
                _buildTimeContainer('2:00 PM'),
                _buildTimeContainer('3:00 PM'),
                _buildTimeContainer('4:00 PM'),
                _buildTimeContainer('5:00 PM'),
              ],
            ),
            const SizedBox(height: 16.0),
           const  Text(
              'Select Date:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            ElevatedButton(
              onPressed: () {
                _selectDate(context);
              },
              child: const Text('Select Date'),
            ),
            const SizedBox(height: 16.0),
            Text(
              selectedDate != null
                  ? 'Selected Date: ${selectedDate!.toString()}'
                  : 'No date selected',
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Select Appointment Type:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            DropdownButton<AppointmentType>(
              value: selectedAppointmentType,
              onChanged: (value) {
                setState(() {
                  selectedAppointmentType = value;
                });
              },
              items:const  [
                DropdownMenuItem<AppointmentType>(
                  value: AppointmentType.inPerson,
                  child: Text('In-person Appointment'),
                ),
                DropdownMenuItem<AppointmentType>(
                  value: AppointmentType.online,
                  child: Text('Online Appointment'),
                ),
              ],
            ),
            const Spacer(),
            MyButton(
              onTap: () {
                // Perform confirmation logic here
                if (selectedDate != null &&
                    selectedTime != null &&
                    selectedAppointmentType != null) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ConfirmAppointment(
                        selectedDate: selectedDate!,
                        selectedTime: selectedTime!,
                        selectedAppointmentType: selectedAppointmentType!,
                      ),
                    ),
                  );
                }
              },
              buttontxt: 'Confirm Appointment',
            ),
          ],
        ),
      ),
    );
  }
}