import 'package:flutter/material.dart';

void main() {
  runApp(MyBlankSpace());
}

class MyBlankSpace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlankPage(),
    );
  }
}

class BlankPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blank Page'),
      ),
      body: Container(
        color: Colors.white, // Set the background color to white
        // You can add additional widgets or leave it empty for a blank white page
      ),
    );
  }
}
