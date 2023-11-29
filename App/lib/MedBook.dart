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
          columnSpacing: 16.0,
          columns: [
            DataColumn(label: Text('Date of Visit')),
            DataColumn(label: Text('Visited Doctor')),
            DataColumn(label: Text('Prescription')),
          ],
          rows: [
            DataRow(
              cells: [
                DataCell(buildCell('2023-01-15')),
                DataCell(buildCell('Dr. Smith')),
                DataCell(buildPrescriptionCell()),
              ],
            ),
            DataRow(
              cells: [
                DataCell(buildCell('2023-01-15')),
                DataCell(buildCell('Dr. Smith')),
                DataCell(buildPrescriptionCell()),
              ],
            ),
            DataRow(
              cells: [
                DataCell(buildCell('2023-01-15')),
                DataCell(buildCell('Dr. Smith')),
                DataCell(buildPrescriptionCell()),
              ],
            ),
            DataRow(
              cells: [
                DataCell(buildCell('2023-01-15')),
                DataCell(buildCell('Dr. Smith')),
                DataCell(buildPrescriptionCell()),
              ],
            ),
            DataRow(
              cells: [
                DataCell(buildCell('2023-01-15')),
                DataCell(buildCell('Dr. Smith')),
                DataCell(buildPrescriptionCell()),
              ],
            ),
            DataRow(
              cells: [
                DataCell(buildCell('2023-01-15')),
                DataCell(buildCell('Dr. Ramaswamy Narayana')),
                DataCell(buildPrescriptionCell()),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCell(String text) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.grey[200],
      ),
      child: Text(text),
    );
  }

  Widget buildPrescriptionCell() {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => MyPres1()));
      },
      child: Container(
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: Colors.blue,
        ),
        child: Text(
          'Prescription Link',
          style: TextStyle(
            color: Colors.white,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }
}
