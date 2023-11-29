import 'package:flutter/material.dart';
import 'package:project1/DashGPT.dart';
import 'package:project1/MoreOptions.dart';

void main() {
  runApp(MyStudentInfo());
}

class MyStudentInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StudentInfoPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// class StudentInfoPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Student Information'),
//       ),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               CircleAvatar(
//                 radius: 70.0,
//                 backgroundImage: AssetImage('assets/student_image.jpg'), // Replace with the actual image path
//               ),
//               SizedBox(height: 16.0),
//               Text(
//                 'John Doe',
//                 style: TextStyle(
//                   fontSize: 24.0,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               Text(
//                 'Roll Number: 12345',
//                 style: TextStyle(fontSize: 16.0),
//               ),
//               Text(
//                 'Department: Computer Science',
//                 style: TextStyle(fontSize: 16.0),
//               ),
//               Text(
//                 'Mobile Number: 123-456-7890',
//                 style: TextStyle(fontSize: 16.0),
//               ),
//               Text(
//                 'Blood Group: O+',
//                 style: TextStyle(fontSize: 16.0),
//               ),
//               // Add more information as needed
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class StudentInfoPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Student Information'),
//       ),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(height: 20.0),
//               Center(
//                 child: CircleAvatar(
//                   radius: 70.0,
//                   backgroundImage: AssetImage('assets/student_image.jpg'), // Replace with the actual image path
//                 ),
//               ),
//               SizedBox(height: 20.0),
//               Text(
//                 'John Doe',
//                 style: TextStyle(
//                   fontSize: 28.0,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               Text(
//                 'Roll Number: 12345',
//                 style: TextStyle(fontSize: 20.0),
//               ),
//               Text(
//                 'Department: Computer Science',
//                 style: TextStyle(fontSize: 20.0),
//               ),
//               Text(
//                 'Mobile Number: 123-456-7890',
//                 style: TextStyle(fontSize: 20.0),
//               ),
//               Text(
//                 'Blood Group: O+',
//                 style: TextStyle(fontSize: 20.0),
//               ),
//               // Add more information as needed
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class StudentInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Information'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => MoreOptions(),
            ));
          },
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.0),
              Center(
                child: CircleAvatar(
                  radius: 70.0,
                  backgroundImage: AssetImage('assets/20230402_180113.jpg'), // Replace with the actual image path
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'John Doe',
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Roll Number: 12345',
                style: TextStyle(fontSize: 20.0),
              ),
              Text(
                'Department: Computer Science',
                style: TextStyle(fontSize: 20.0),
              ),
              Text(
                'Mobile Number: 123-456-7890',
                style: TextStyle(fontSize: 20.0),
              ),
              Text(
                'Blood Group: O+',
                style: TextStyle(fontSize: 20.0),
              ),
              // Add more information as needed
            ],
          ),
        ),
      ),
    );
  }
}