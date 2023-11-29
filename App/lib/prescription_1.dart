import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:project1/MedBook.dart';

class MyPres1 extends StatefulWidget {
  const MyPres1({super.key});

  @override
  State<MyPres1> createState() => _MyPres1();
}

class _MyPres1 extends State<MyPres1>  {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PrescriptionPage(
        imagePath: 'assets/prescription.png', // Replace with your image path
        title: 'Prescription for', // Specify the title
      ),
    );
  }
}

class PrescriptionPage extends StatelessWidget {
  final String imagePath;
  final String title;

  PrescriptionPage({required this.imagePath, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$title'), // Display "Prescription for" with the provided title
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => MyMedBook()));
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
