import 'package:flutter/material.dart';
import 'package:project1/MoreOptions.dart';

void main() {
  runApp(MyStudentInfo());
}

class MyStudentInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StudentProfilePage(),
      debugShowCheckedModeBanner: false,

    );
  }
}

class StudentProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Profile'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => MoreOptions()));
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                CircleAvatar(
                radius: 80.0,
                backgroundImage: AssetImage('assets/20230402_180113.jpg'),
              ),
        ]
      ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Rahul Agarwal', // Replace with the student's name
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Roll No: 22B3961', // Replace with the student's roll number
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.normal,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 16.0),
            _buildInfoTile('Blood Group', 'B+'),
            _buildInfoTile('Date of Birth', 'June 23, 2004'),
            _buildInfoTile('Weight', '98 kg'),
            _buildInfoTile('Height', '171 cm'),
            _buildInfoTile('Infections', 'None'),
            _buildInfoTile('Mobile No', '9660105195'),
            _buildInfoTile('Emergency Mobile No', '9660077555'),
            _buildInfoTile('Institute Address', 'Hostel 2, Room 60'),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoTile(String title, String value) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(value),
      ),
    );
  }
}
