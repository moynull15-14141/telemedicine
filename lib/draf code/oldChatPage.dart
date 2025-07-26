import 'package:flutter/material.dart';
import 'package:tlmdcin/data/messageData.dart'; // dummyMessages এর জন্য ইম্পোর্ট করুন
import 'package:tlmdcin/model/messageModel.dart'; // Messagemodel এর জন্য ইম্পোর্ট করুন

class chatOld extends StatefulWidget {
  const chatOld({super.key});

  @override
  State<chatOld> createState() => _chatState();
}

class _chatState extends State<chatOld> {
  Messagemodel? doctorMessage;

  @override
  void initState() {
    super.initState();
    for (var message in dummyMessages) {
      if (message.senderId == "do1") {
        // ডাক্তারের ID
        doctorMessage = message;
        break;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    // এখন সরাসরি Messagemodel থেকে ডাক্তারের নাম ও ছবি নেওয়া হচ্ছে
    // final String actualDoctorName =
    //     doctorMessage?.senderName ?? "Unknown Doctor";
    // final String actualDoctorImage =
    //     doctorMessage?.image ?? "assets/default_doctor.jpeg";

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 234, 206),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ElevatedButton(
            //   onPressed: () {
            //     if (doctorMessage != null) {
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //           builder: (context) => chatBox(
            //             doctorName: actualDoctorName,
            //             doctorImage: actualDoctorImage,
            //             specialty: doctorMessage?.specialty ?? "General",
            //           ),
            //         ),
            //       );
            //     } else {
            //       ScaffoldMessenger.of(context).showSnackBar(
            //         const SnackBar(
            //           content: Text(
            //             "ডাক্তারের তথ্য খুঁজে পাওয়া যায়নি। চ্যাট শুরু করা যাচ্ছে না।",
            //           ),
            //         ),
            //       );
            //     }
            //   },
            //   child: const Text("ডাক্তারের সাথে চ্যাট করুন"),
            // ),
          ],
        ),
      ),
    );
  }
}
