import 'package:flutter/material.dart';
<<<<<<< HEAD

import 'views/home_page.dart';

void main() {

  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,

      home: HomePage(),
    );
  }
=======
import 'network_services.dart';

void main() {

  NetworkService().fetchTasks();

  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          title: Text("HTTP Example",style: TextStyle(color:Colors.white),),
        ),

        body: Center(
          child: Text("Check Console",style: TextStyle(color: Colors.white)),
        ),
      ),
    ),
  );
>>>>>>> f374a57 (added files)
}