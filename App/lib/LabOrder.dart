import 'package:flutter/material.dart';
import 'package:project1/Blank.dart';
import 'package:project1/DashGPT.dart';
import 'package:project1/Dashboard.dart';
import 'package:project1/DoctorsAvailabillity.dart';
import 'package:project1/LabOrder.dart';
import 'package:project1/MedBook.dart';
import 'package:project1/MoreOptions.dart';
import 'package:project1/PendingBloodTests.dart';
import 'package:project1/PendingUrineTests.dart';
import 'package:project1/PendingXRayTests.dart';
import 'package:project1/Student_info.dart';

void main() {
  runApp(MyLabOrder());
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

class MyLabOrder extends StatelessWidget {
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
      name: 'Urine Test',
      imagePath: 'assets/urine_test.png',
      destinationPage: MyUrineTests(),
    ),
    Tile(
      name: 'X-Ray Test',
      imagePath: 'assets/x-ray.png',
      destinationPage: MyXRayTests() ,
    ),
    Tile(
      name: 'Blood Test',
      imagePath: 'assets/blood_test.png',
      destinationPage: MyBloodTests() ,
    ),



    // Add more tiles as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Lab Orders',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => MoreOptions()));
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
