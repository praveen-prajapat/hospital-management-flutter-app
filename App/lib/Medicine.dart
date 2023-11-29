import 'package:flutter/material.dart';
import 'package:project1/pharmacy.dart';

void main() {
  runApp(MyMedicines());
}

class MyMedicines extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MedicineListPage(),
      debugShowCheckedModeBanner: false,

    );
  }
}

class MedicineListPage extends StatelessWidget {
  final List<Medicine> medicines = [
    Medicine(name: 'Medicine A', quantity: 10, cost: 15.0),
    Medicine(name: 'Medicine B', quantity: 20, cost: 25.0),
    Medicine(name: 'Medicine C', quantity: 15, cost: 18.0),
    // Add more medicines as needed
  ];

  @override
  Widget build(BuildContext context) {
    double totalCost = medicines.fold(0, (sum, medicine) => sum + (medicine.quantity * medicine.cost));

    return Scaffold(
      appBar: AppBar(
        title: Text('Medicine List'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => MyPharmacy(),
            ));
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: medicines.length,
              itemBuilder: (context, index) {
                return MedicineCard(medicine: medicines[index]);
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            color: Colors.blueGrey, // Customize the color
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Cost:',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Customize the text color
                  ),
                ),
                Text(
                  '\$${totalCost.toStringAsFixed(2)}',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Customize the text color
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Medicine {
  final String name;
  final int quantity;
  final double cost;

  Medicine({required this.name, required this.quantity, required this.cost});
}

class MedicineCard extends StatelessWidget {
  final Medicine medicine;

  MedicineCard({required this.medicine});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.all(8.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              medicine.name,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text('Quantity: ${medicine.quantity}'),
            SizedBox(height: 8.0),
            Text('Cost: \$${medicine.cost.toStringAsFixed(2)}'),
          ],
        ),
      ),
    );
  }
}
