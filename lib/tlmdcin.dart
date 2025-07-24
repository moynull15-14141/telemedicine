import 'package:flutter/material.dart';
import 'package:tlmdcin/data/UserData.dart';
import 'package:tlmdcin/data/messageListData.dart';
import 'package:tlmdcin/scrn/Home.dart';

class tlmdcin extends StatelessWidget {
  const tlmdcin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Telemedicien",
      theme: ThemeData(),
      home: Home(user: dummyUsers[0], messagelistmodel: dummyMessageList[0]),
    );
  }
}



//Scaffold(backgroundColor: const Color.fromARGB(255, 255, 242, 202),