import 'package:flutter/material.dart';
import 'package:project1/DashGPT.dart';
import 'package:project1/MoreOptions.dart';

void main() {
  runApp(MyDoctorsAvailability());
}

class Doctor {
  final String name;
  final String speciality;
  final String imagePath;
  final String availability;

  Doctor({
    required this.name,
    required this.speciality,
    required this.imagePath,
    required this.availability,
  });
}

class MyDoctorsAvailability extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DoctorListPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class DoctorListPage extends StatefulWidget {
  @override
  _DoctorListPageState createState() => _DoctorListPageState();
}

class _DoctorListPageState extends State<DoctorListPage> {
  List<Doctor> doctors = [
    Doctor(name: 'Dr. John Doe', speciality: 'Cardiologist', imagePath: 'assets/Doctor2.png', availability: 'Available today 2pm to 5pm'),
    Doctor(name: 'Dr. Jane Smith', speciality: 'Pediatrician', imagePath: 'assets/Doctor1.png', availability: 'Available today 9am to 12pm'),
    // Add more doctors as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Doctor's List"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => MoreOptions(),
            ));
          },
        ),
      ),
      body: ListView.builder(
        itemCount: doctors.length,
        itemBuilder: (context, index) {
          Doctor doctor = doctors[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                contentPadding: EdgeInsets.all(8.0),
                leading: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage(doctor.imagePath),
                ),
                title: Text(
                  doctor.name,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 4.0),
                    Text(
                      doctor.speciality,
                      style: TextStyle(fontSize: 14.0),
                    ),
                    SizedBox(height: 4.0),
                    Text(
                      doctor.availability,
                      style: TextStyle(fontSize: 14.0),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
