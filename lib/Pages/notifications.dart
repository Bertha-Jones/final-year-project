/*import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// Initialize the notification plugin
FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initializeNotifications();
  runApp(MyApp());
}

// Initialize the notification plugin settings
void initializeNotifications() async {
  const AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings('app_icon'); // Replace 'app_icon' with your app's icon name
  final InitializationSettings initializationSettings =
      InitializationSettings(android: initializationSettingsAndroid);
  await flutterLocalNotificationsPlugin.initialize(initializationSettings);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appointment App',
      home: AppointmentScreen(),
    );
  }
}

class AppointmentScreen extends StatelessWidget {
  // Function to schedule the appointment notification
  Future<void> scheduleAppointmentNotification(DateTime appointmentTime) async {
    const AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails(
      'channel_id', // Replace with your desired channel ID
      'Channel name', // Replace with your desired channel name
      'Channel description', // Replace with your desired channel description
      importance: Importance.high,
      priority: Priority.high,
    );
    const NotificationDetails platformChannelSpecifics =
        NotificationDetails(android: androidPlatformChannelSpecifics);

    await flutterLocalNotificationsPlugin.zonedSchedule(
      0,
      'Appointment Reminder',
      'Your appointment is due now!', // Replace with your notification message
      appointmentTime,
      platformChannelSpecifics,
      androidAllowWhileIdle: true,
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
    );
  }

  void handleAppointmentBooking() {
    // Get the selected appointment time from your previous code
    DateTime selectedAppointmentTime = DateTime.now().add(Duration(minutes: 30)); // Replace with your selected appointment time

    // Schedule the appointment notification
    scheduleAppointmentNotification(selectedAppointmentTime);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appointment Booking'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: handleAppointmentBooking,
          child: Text('Book Appointment'),
        ),
      ),
    );
  }
}
*/