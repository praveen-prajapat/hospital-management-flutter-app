// import 'dart:js';

// import 'dart:js';
//
// import 'package:flutter/material.dart';
// import 'package:project1/Dashboard.dart';
// import 'package:project1/login.dart';
// // import 'package:flutter/services.dart';
//
// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     initialRoute: 'login',
//     routes: {
//       'login' : (context)=> MyLogin(),
//       'dashboard' : (context) => MyDashboard(),
//     },
//     home: MyLogin(),
//   ));

  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  //   DeviceOrientation.portraitDown
  // ]);
  // runApp(new MyLogin());
// }

import 'package:flutter/material.dart';
import 'package:project1/DashGPT.dart';
// import 'package:project1/Dashboard.dart';
import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Circle Avatar Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'login',
      routes: {
        'login': (context) => MyLogin(),
        'dashboard': (context) => MyDash(),
      },
    );
  }
}

