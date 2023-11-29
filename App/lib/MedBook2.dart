import 'package:flutter/material.dart';
import 'package:project1/MoreOptions.dart';
import 'package:project1/prescription_1.dart';

void main() {
  runApp(MyMedBook2());
}

class MyMedBook2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyDoctorVisitPage(),
      debugShowCheckedModeBanner: false,

    );
  }
}

class MyDoctorVisitPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doctor Visits'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => MoreOptions()));
          },
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          DoctorVisitTile(
            doctorName: 'Dr. Smith',
            dateOfVisit: '2023-01-15',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyPres1()));
            },
          ),
          SizedBox(height: 16.0),
          DoctorVisitTile(
            doctorName: 'Dr. Johnson',
            dateOfVisit: '2023-02-20',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyPres1()));
            },
          ),
          SizedBox(height: 16.0),
          DoctorVisitTile(
            doctorName: 'Dr. Anderson',
            dateOfVisit: '2023-03-10',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyPres1()));
            },
          ),
          SizedBox(height: 16.0),
          DoctorVisitTile(
            doctorName: 'Dr. Agarwal',
            dateOfVisit: '2023-05-10',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyPres1()));
            },
          ),
          SizedBox(height: 16.0),
          DoctorVisitTile(
            doctorName: 'Dr. Prajapat',
            dateOfVisit: '2023-07-24',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyPres1()));
            },
          ),
          SizedBox(height: 16.0),
          DoctorVisitTile(
            doctorName: 'Dr. Gaurav',
            dateOfVisit: '2023-08-17',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyPres1()));
            },
          ),

          // Add more DoctorVisitTiles as needed
        ],
      ),
    );
  }
}

class DoctorVisitTile extends StatelessWidget {
  final String doctorName;
  final String dateOfVisit;
  final VoidCallback onTap;

  DoctorVisitTile({
    required this.doctorName,
    required this.dateOfVisit,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Card(
          elevation: 0, // Set elevation to 0 to avoid double shadow with BoxDecoration
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  doctorName,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                Text('Date of Visit: $dateOfVisit'),
                SizedBox(height: 8.0),
                InkWell(
                  onTap: onTap,
                  child: Text(
                    'View Details',
                    style: TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DoctorDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doctor Details'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Text('Details of the selected doctor visit'),
      ),
    );
  }
}
