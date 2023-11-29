import 'package:flutter/material.dart';
import 'package:project1/Blank.dart';
import 'package:project1/DashGPT.dart';
import 'package:project1/Dashboard.dart';
import 'package:project1/DoctorsAppointment.dart';
import 'package:project1/DoctorsAvailabillity.dart';
import 'package:project1/LabOrder.dart';
import 'package:project1/LabReports.dart';
import 'package:project1/MedBook.dart';
import 'package:project1/MedBook2.dart';
import 'package:project1/Student_info.dart';
import 'package:project1/pharmacy.dart';

void main() {
  runApp(MoreOptions());
}

class Tile {
  final String name;
  final String imagePath;
  final Widget destinationPage;

  Tile({
    required this.name,
    required this.imagePath,
    required this.destinationPage,
  });
}

class MoreOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Tile> tiles = [
    Tile(
      name: 'Medical Book',
      imagePath: 'assets/MedBook.png',
      destinationPage: MyMedBook2(),
    ),
    Tile(
      name: 'Student Information',
      imagePath: 'assets/studentinfo.png',
      destinationPage: MyStudentInfo(),
    ),
    Tile(
      name: 'Lab Order',
      imagePath: 'assets/laborder.png',
      destinationPage: MyLabOrder(),
    ),
    Tile(
      name: 'Lab Reports',
      imagePath: 'assets/labreport.png',
      destinationPage: MyLabReports(),
    ),
    Tile(
      name: 'Pharmacy',
      imagePath: 'assets/Pharmacy.png',
      destinationPage: MyPharmacy(),
    ),
    Tile(
      name: "Doctor's Availability",
      imagePath: 'assets/availability.png',
      destinationPage: MyDoctorsAvailability(),
    ),
    Tile(
      name: "Doctor's Appointment",
      imagePath: 'assets/Appointment.png',
      destinationPage: MyDoctorsAppointment(),
    ),
    Tile(
      name: "Reimbursement",
      imagePath: 'assets/Reimburse.png',
      destinationPage: MyBlankSpace(),
    ),


    // Add more tiles as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'More Options',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => MyDash()));
          },
        ),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: tiles.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => tiles[index].destinationPage),
              );
            },
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    tiles[index].imagePath,
                    height: 80.0,
                    width: 80.0,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    tiles[index].name,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class DestinationPage extends StatelessWidget {
  final String details;

  DestinationPage(this.details);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          details,
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Text('Details for $details'),
      ),
    );
  }
}
