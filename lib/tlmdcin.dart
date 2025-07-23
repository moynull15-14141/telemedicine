import 'package:flutter/material.dart';
import 'package:tlmdcin/scrn/Home.dart';

class tlmdcin extends StatelessWidget {
  const tlmdcin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Telemedicien",
      theme: ThemeData(),
      home: Home(),
    );
  }
}



//Scaffold(backgroundColor: const Color.fromARGB(255, 255, 242, 202),