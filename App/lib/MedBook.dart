import 'package:flutter/material.dart';
import 'package:project1/MoreOptions.dart';
import 'package:project1/prescription_1.dart';

class MyMedBook extends StatefulWidget {
  const MyMedBook({super.key});

  @override
  State<MyMedBook> createState() => _MyMedBookState();
}

class _MyMedBookState extends State<MyMedBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Medical Book'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => MoreOptions()));
          },
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columns: [
            DataColumn(label: Text('Date of Visit')),
            DataColumn(label: Text('Visited Doctor')),
            DataColumn(label: Text('Prescription')),
          ],
          rows: [
            DataRow(
              cells: [
                DataCell(Text('2023-01-15')),
                DataCell(Text('Dr. Smith')),
                DataCell(
                  InkWell(
                    child: Text('Prescription Link',
                    style: TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    )),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MyPres1()));                    },
                  ),
                ),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Text('2023-01-15')),
                DataCell(Text('Dr. Smith')),
                DataCell(
                  InkWell(
                    child: Text('Prescription Link',
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        )),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MyPres1()));                    },
                  ),
                ),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Text('2023-01-15')),
                DataCell(Text('Dr. Smith')),
                DataCell(
                  InkWell(
                    child: Text('Prescription Link',
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        )),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MyPres1()));                    },
                  ),
                ),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Text('2023-01-15')),
                DataCell(Text('Dr. Smith')),
                DataCell(
                  InkWell(
                    child: Text('Prescription Link',
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        )),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MyPres1()));                    },
                  ),
                ),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Text('2023-01-15')),
                DataCell(Text('Dr. Smith')),
                DataCell(
                  InkWell(
                    child: Text('Prescription Link',
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        )),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MyPres1()));                    },
                  ),
                ),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Text('2023-01-15')),
                DataCell(Text('Dr. Ramaswamy narayana')),
                DataCell(
                  InkWell(
                    child: Text('Prescription Link',
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        )),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MyPres1()));                    },
                  ),
                ),
              ],
            ),


            // Add more rows for additional visits
          ],
        ),
      ),
    );
  }
}