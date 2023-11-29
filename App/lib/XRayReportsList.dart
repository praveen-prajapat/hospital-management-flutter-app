import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:project1/LabReports.dart';
import 'package:project1/UrineReport.dart';
import 'package:project1/X-Ray%20Report.dart';

void main() {
  runApp(MyXRayReportList());
}

class MyXRayReportList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ReportPage(),
      debugShowCheckedModeBanner: false,

    );
  }
}

class ReportPage extends StatelessWidget {
  final List<String> reportTitles = [
    'Report for Test on 23rd November',
    'Report for Test on 24th November',
    // Add more report titles as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Report'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => MyLabReports()));
          },
        ),
      ),
      body: ListView.builder(
        itemCount: reportTitles.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: ListTile(
                title: Text(reportTitles[index]),
                onTap: () {
                  // Handle tile tap, e.g., navigate to details page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyXRayReport(),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

class ReportDetailsPage extends StatelessWidget {
  final String imageUrl = 'assets/your_image.jpg'; // Replace with your image asset

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Zoomable Image'),
      ),
      body: Container(
        child: PhotoView(
          imageProvider: AssetImage(imageUrl),
          minScale: PhotoViewComputedScale.contained,
          maxScale: PhotoViewComputedScale.covered * 2,
        ),
      ),
    );
  }
}
