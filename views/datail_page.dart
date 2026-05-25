import 'package:flutter/material.dart';

import '../models/lap_model.dart';

class DetailPage extends StatelessWidget {
  final LaptopModel laptop;

  const DetailPage({super.key, required this.laptop});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title:Text(' Item Details',style: TextStyle(color:Colors.white),)
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text(
              laptop.name,

              style: const TextStyle(fontSize: 30,
               fontWeight: FontWeight.bold,
              color:Colors.white,
              ),
            ),
            
            const SizedBox(height: 30),
            Table(
              border: TableBorder.all( color:const Color.fromARGB(255, 0, 89, 161),),            
              columnWidths: const {
                0: FlexColumnWidth(2),
                1: FlexColumnWidth(3),
              },
              children: [
                buildRow("Type", laptop.type),

                buildRow("Processor", laptop.processor),

                buildRow("RAM", laptop.ram),

                buildRow("Storage", laptop.storage),

                buildRow("GPU", laptop.gpu),
              ],
            ),
          ],
        ),
      ),
    );
  }

  TableRow buildRow(String title, String value) {
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
  
          child: Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color:Colors.white),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(10), 
          child: Text(value,
          style:TextStyle(color:Colors.white))),
      ],
    );
  }
}
