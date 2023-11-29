import 'package:flutter/material.dart';
import 'package:project1/DoctorsAvailabillity.dart';
import 'package:project1/MedBook.dart';
import 'package:project1/MedBook2.dart';
import 'package:project1/MoreOptions.dart';
import 'package:project1/Student_info.dart';
import 'package:project1/login.dart';
import 'package:project1/pharmacy.dart';

class MyDash extends StatefulWidget {
  const MyDash({super.key});

  @override
  State<MyDash> createState() => _MyDashboardState();
}

class _MyDashboardState extends State<MyDash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Dashboard'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => MyLogin(),
            ));
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.book),
            onPressed: () {
              // Navigate to the medical book page
              // You can implement this navigation logic here
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyMedBook2()));
            },
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              // Open a side menu with different options
              // You can implement this menu logic here
              Navigator.push(context, MaterialPageRoute(builder: (context) => MoreOptions()));
            },
          ),
        ],
      ),
      body: SingleChildScrollView(      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80.0,
              backgroundImage: AssetImage('assets/20230402_180113.jpg'),
            ),
            SizedBox(height: 16.0),
            Text(
              'Rahul Agarwal',
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Roll Number: 22B3961',
              style: TextStyle(fontSize: 20.0),
            ),
            Text(
              'Electrical Engineering Department',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 16.0),
            ExpansionTile(
              title: Text('Student Information',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),
              children: [
                ListTile(
                  title: Text('Date of Birth: 23 June 2004',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),),
                ),
                ListTile(
                  title: Text('Blood Group : B+ve',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                    ),),
                ),
                ListTile(
                  title: Text('Height: 181cm',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                    ),),
                ),
                ListTile(
                  title: Text('Weight: 98kg',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                    ),),
                ),
                ListTile(
                  title: Text('Infections: N/A',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                    ),),
                ),
                ListTile(
                  title: Text('Mobile No.: 9660105195',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                    ),),
                ),
                ListTile(
                  title: Text('Emergency Contact: 9660077555',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                    ),),
                ),
                ListTile(
                  title: Text('Institute address: Hostel 2, Room 60',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                    ),),
                ),

                // Add more personal details here
              ],
            ),
          ],
        ),
      ),),

    );
  }
}

// class _MyDashboardState extends State<MyDash> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Student Dashboard'),
//         automaticallyImplyLeading: false, // Set this to false to hide the back button
//         actions: [
//           IconButton(
//             icon: Icon(Icons.book),
//             onPressed: () {
//               Navigator.push(context, MaterialPageRoute(builder: (context) => MyMedBook()));
//             },
//           ),
//           IconButton(
//             icon: Icon(Icons.more_vert),
//             onPressed: () {
//               Navigator.push(context, MaterialPageRoute(builder: (context) => MySideMenu()));
//             },
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               CircleAvatar(
//                 radius: 80.0,
//                 backgroundImage: AssetImage('assets/20230402_180113.jpg'),
//               ),
//               SizedBox(height: 16.0),
//               Text(
//                 'Rahul Agarwal',
//                 style: TextStyle(
//                   fontSize: 32.0,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               Text(
//                 'Roll Number: 22B3961',
//                 style: TextStyle(fontSize: 20.0),
//               ),
//               Text(
//                 'Electrical Engineering Department',
//                 style: TextStyle(fontSize: 20.0),
//               ),
//               SizedBox(height: 16.0),
//               ExpansionTile(
//                 title: Text(
//                   'Student Information',
//                   style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 children: [
//                   ListTile(
//                     title: Text(
//                       'Date of Birth: 23 June 2004',
//                       style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                   ListTile(
//                     title: Text(
//                       'Blood Group : B+ve',
//                       style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                   ListTile(
//                     title: Text(
//                       'Height: 181cm',
//                       style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                   ListTile(
//                     title: Text(
//                       'Weight: 98kg',
//                       style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                   ListTile(
//                     title: Text(
//                       'Infections: N/A',
//                       style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                   ListTile(
//                     title: Text(
//                       'Mobile No.: 9660105195',
//                       style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                   ListTile(
//                     title: Text(
//                       'Emergency Contact: 9660077555',
//                       style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                   ListTile(
//                     title: Text(
//                       'Institute address: Hostel 2, Room 60',
//                       style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


class MySideMenu extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 100,
            child: DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Stack(
              children: [
                Positioned(
                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MyDash(),
                      ));
                    },
                  ),
                ),
                Center(
                  child: Text(
                    'More Options',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
              ],
            ),
          ),),

          ListTile(
            leading: Icon(Icons.book),
            title: Text('Medical Book'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => MyMedBook2(),
              ));
            },
          ),
          ListTile(
            leading: Icon(Icons.calendar_today),
            title: Text('Doctor\'s Appointment'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => DoctorsAppointmentPage(),
              ));
            },
          ),
          ListTile(
            leading: Icon(Icons.local_pharmacy),
            title: Text('Pharmacy'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => MyPharmacy(),
              ));
            },
          ),
          ListTile(
            leading: Icon(Icons.science_rounded),
            title: Text('Lab Orders'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => LabOrder(),
              ));
            },
          ),
          ListTile(
            leading: Icon(Icons.find_in_page_sharp),
            title: Text('Reports'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => LabReports(),
              ));
            },
          ),
          ListTile(
            leading: Icon(Icons.table_chart_rounded),
            title: Text("Doctor's Availability"),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => MyDoctorsAvailability(),
              ));
            },
          ),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text("Student Information"),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => MyStudentInfo(),
              ));
            },
          ),
          ListTile(
            leading: Icon(Icons.money_outlined),
            title: Text("Reimbursement"),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Reimbursement(),
              ));
            },
          ),
          // Add more menu items as needed
        ],
      ),
    );
  }
}



class DoctorsAppointmentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doctor\'s Appointment'),
      ),
      body: Center(
        child: Text('Doctor\'s Appointment Page Content'),
      ),
    );
  }
}

class PastRecordsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Past Records'),
      ),
      body: Center(
        child: Text('Past Records Page Content'),
      ),
    );
  }
}


class LabOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lab Order Page'),
      ),
      body: Center(
        child: Text('Lab Order Page Content'),
      ),
    );
  }
}

class LabReports extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lab Reports Page'),
      ),
      body: Center(
        child: Text('Lab Reports Page Content'),
      ),
    );
  }
}

class DoctorAvailability extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Doctor's Availability page"),
      ),
      body: Center(
        child: Text('Doctor Availability Page Content'),
      ),
    );
  }
}

class Reimbursement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reimbursement Page'),
      ),
      body: Center(
        child: Text('Reimbursement Page Content'),
      ),
    );
  }
}



class StudentInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Information Page'),
      ),
      body: Center(
        child: Text('Student Information Page Content'),
      ),
    );
  }
}




