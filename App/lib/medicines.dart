import 'package:flutter/material.dart';
import 'package:project1/DashGPT.dart';
import 'package:project1/Dashboard.dart';

class MyMedicines extends StatefulWidget {
  const MyMedicines({super.key});

  @override
  State<MyMedicines> createState() => _MyMedicinesState();
}

class _MyMedicinesState extends State<MyMedicines> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Medicine Inventory'),
      ),
      body: DataTable(
        columns: [
          DataColumn(label: Text('Serial No.')),
          DataColumn(label: Text('Name of Medicine')),
          DataColumn(label: Text('Quantity')),
        ],
        rows: [
          DataRow(cells: [
            DataCell(Text('1')),
            DataCell(Text('Medicine A')),
            DataCell(Text('100')),
          ]),
          DataRow(cells: [
            DataCell(Text('2')),
            DataCell(Text('Medicine B')),
            DataCell(Text('50')),
          ]),
          DataRow(cells: [
            DataCell(Text('3')),
            DataCell(Text('Medicine C')),
            DataCell(Text('75')),
          ]),
          // Add more rows for additional medicines
        ],
      ),
    );
  }
}