import 'package:flutter/material.dart';
import 'package:project1/LabOrder.dart';
import 'package:project1/MoreOptions.dart';

void main() {
  runApp(MyXRayTests());
}

class LabOrder {
  final String date;

  LabOrder({required this.date});
}

class MyXRayTests extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LabOrderPage(),
      debugShowCheckedModeBanner: false,

    );
  }
}

class LabOrderPage extends StatelessWidget {
  final List<LabOrder> pendingLabOrders = [
    LabOrder(date: 'December 15, 2023'),
    // LabOrder(date: 'December 20, 2023'),
    // Add more pending lab orders as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pending X-Ray Tests'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => MyLabOrder(),
            ));
          },
        ),
      ),
      body: Center(
        child: pendingLabOrders.isEmpty
            ? Text('No pending lab orders')
            : ListView.builder(
          itemCount: pendingLabOrders.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 3.0,
              margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: ListTile(
                leading: Icon(Icons.calendar_today),
                title: Text(
                  'Complete by: ${pendingLabOrders[index].date}',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  // Handle tile tap, e.g., navigate to details page
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => LabOrderDetailsPage(pendingLabOrders[index]),
                  //   ),
                  // );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
