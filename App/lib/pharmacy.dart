import 'package:flutter/material.dart';
import 'package:project1/Medicine.dart';
import 'package:project1/MoreOptions.dart';

void main() {
  runApp(MyPharmacy());
}

class MyPharmacy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PharmacyPage(),
      debugShowCheckedModeBanner: false,

    );
  }
}

class PharmacyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pharmacy'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => MoreOptions(),
            ));
          },
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          PharmacyTile(
            date: '2023-04-10',
            doctorName: 'Dr. Smith',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyMedicines()));
            },
          ),
          SizedBox(height: 16.0),
          PharmacyTile(
            date: '2023-04-15',
            doctorName: 'Dr. Johnson',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyMedicines()));
            },
          ),
          SizedBox(height: 16.0),
          PharmacyTile(
            date: '2023-04-20',
            doctorName: 'Dr. Anderson',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyMedicines()));
            },
          ),
          // Add more PharmacyTiles as needed
        ],
      ),
    );
  }
}

class PharmacyTile extends StatelessWidget {
  final String date;
  final String doctorName;
  final VoidCallback onTap;

  PharmacyTile({
    required this.date,
    required this.doctorName,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Date: $date',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                'Prescribed by: $doctorName',
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MedicineDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Medicine Details'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Text('Details of the prescribed medicine'),
      ),
    );
  }
}
