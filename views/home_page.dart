import 'package:flutter/material.dart';

import '../controllers/lap_controller.dart';
import 'datail_page.dart';

class HomePage extends StatelessWidget {

  HomePage({super.key});

  final LaptopController controller =
      LaptopController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text("Items List (LAPTOPS)",
        style: TextStyle(color: Colors.white),),
      ),

      body: ListView.builder(

        itemCount:
            controller.laptopList.length,

        itemBuilder: (context, index) {

          final laptop =
              controller.getLaptop(index);

          return Card(
            color:Colors.black,
            shape: RoundedRectangleBorder(

            borderRadius:
              BorderRadius.circular(20),
              side: const BorderSide(
              color: Color.fromARGB(255, 255, 255, 255),
              width: 1.5,
              ),
            ),
            margin:
                const EdgeInsets.all(10),

            child: ListTile(

              leading: const Icon(
                Icons.laptop,
                color:Color.fromARGB(255, 82, 94, 255),
              ),

              title: Text(laptop.name,style: const TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                      ),
                ),  
              subtitle: Text(laptop.type,style:TextStyle(color:Color.fromARGB(255, 255, 225, 225))),

              trailing: const Icon(
                Icons.arrow_forward_ios,
              ),

              onTap: () {

                Navigator.push(

                  context,

                  MaterialPageRoute(

                    builder: (_) => DetailPage(
                      laptop: laptop,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}