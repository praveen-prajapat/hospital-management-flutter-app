import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:project1/LabReports.dart';

class MyXRayReport extends StatefulWidget {
  const MyXRayReport({super.key});

  @override
  State<MyXRayReport> createState() => _MyXRayReport();
}

class _MyXRayReport extends State<MyXRayReport>  {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ReportPage(
        imagePath: 'assets/report.png', // Replace with your image path
        title: 'X-Ray Report', // Specify the title
      ),
    );
  }
}

class ReportPage extends StatelessWidget {
  final String imagePath;
  final String title;

  ReportPage({required this.imagePath, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$title'), // Display "Prescription for" with the provided title
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => MyLabReports()));
          },
        ),
      ),
      body: Center(
        child: Container(
          child: PhotoView(
            imageProvider: AssetImage(imagePath), // Load the image
            minScale: PhotoViewComputedScale.contained,
            maxScale: PhotoViewComputedScale.covered * 2,
          ),
        ),
      ),
    );
  }
}
