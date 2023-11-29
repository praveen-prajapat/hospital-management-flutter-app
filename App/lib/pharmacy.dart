import 'package:flutter/material.dart';
import 'package:project1/MedBook.dart';
import 'package:project1/medicines.dart';

class MyPharmacyPage extends StatefulWidget {
  const MyPharmacyPage({super.key});

  @override
  State<MyPharmacyPage> createState() => _MyPharmacyPage();
}

class _MyPharmacyPage extends State<MyPharmacyPage>  {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order History'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columns: [
            DataColumn(label: Text('Date of Order')),
            DataColumn(label: Text("Doctor's Name")),
            DataColumn(label: Text('Medicines')),
            DataColumn(label: Text('Pharmacist Name')),
          ],
          rows: [
            DataRow(cells: [
              DataCell(Text('2023-01-15')),
              DataCell(Text('Dr. Smith')),
              DataCell(
                InkWell(
                  child: Text('Medicines Link',
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      )),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyMedicines()));                    },
                ),
              ),
              DataCell(Text('Pharmacist John')),
            ]),
            DataRow(cells: [
              DataCell(Text('2023-02-22')),
              DataCell(Text('Dr. Johnson')),
              DataCell(
                InkWell(
                  child: Text('Medicines Link',
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      )),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyMedicines()));                    },
                ),
              ),
              DataCell(Text('Pharmacist Mary')),
            ]),
            // Add more rows for additional orders
          ],),
      ),
    );
  }
}