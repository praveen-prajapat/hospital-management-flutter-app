import 'package:flutter/material.dart';
import 'package:project1/Blank.dart';
import 'package:project1/MoreOptions.dart';

void main() {
  runApp(MyDoctorsAppointment());
}

class MyDoctorsAppointment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DoctorAppointmentsPage(),
      debugShowCheckedModeBanner: false,

    );
  }
}

class DoctorAppointmentsPage extends StatelessWidget {
  final List<DoctorAppointment> doctorAppointments = [
    DoctorAppointment(doctorName: 'Dr. Smith', date: '2023-01-15', time: '10:00 AM'),
    DoctorAppointment(doctorName: 'Dr. Prajapat', date: '2023-02-20', time: '02:30 PM'),
    DoctorAppointment(doctorName: 'Dr. Agarwal', date: '2023-01-15', time: '10:00 AM'),
    DoctorAppointment(doctorName: 'Dr. Johnson', date: '2023-02-20', time: '02:30 PM'),

    // Add more appointments as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appointments'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => MoreOptions()));
          },
        ),
      ),
      body: ListView.builder(
        itemCount: doctorAppointments.length,
        itemBuilder: (context, index) {
          return _buildAppointmentTile(doctorAppointments[index]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => MyBlankSpace()));

          // Handle the action when the plus icon is clicked
          // For example, navigate to a page to add a new appointment
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Widget _buildAppointmentTile(DoctorAppointment appointment) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: ListTile(
        title: Text(
          appointment.doctorName,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text('${appointment.date} ${appointment.time}'),
      ),
    );
  }
}

class DoctorAppointment {
  final String doctorName;
  final String date;
  final String time;

  DoctorAppointment({required this.doctorName, required this.date, required this.time});
}
