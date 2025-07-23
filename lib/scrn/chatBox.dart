import 'package:flutter/material.dart';
import 'package:tlmdcin/common%20wiget/fullscrnimage.dart';
import 'package:tlmdcin/data/messageData.dart';
import 'package:tlmdcin/model/messageModel.dart';
import 'package:tlmdcin/scrn/drprofile.dart';

class chatBox extends StatelessWidget {
  final String doctorName;
  final String doctorImage;
  final String specialty;
  const chatBox({
    super.key,
    required this.doctorName,
    required this.doctorImage,
    required this.specialty,
  });

  @override
  Widget build(BuildContext context) {
    const String currentUserId = "pa1";

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 234, 206),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 243, 234, 206),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        titleSpacing: 0.0,
        title: Row(
          children: [
            // ডাক্তারের ছবি
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        FullscreenImage(imagePath: doctorImage),
                  ),
                );
              },
              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(50),
                child: Image.asset(
                  doctorImage,
                  width: 50, // ছবির আকার ছোট করুন
                  height: 50, // ছবির আকার ছোট করুন
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 10), // ছবি এবং নামের মধ্যে দূরত্ব বাড়ান
            // ডাক্তারের নাম
            Expanded(
              // Text উইজেটকে Expanded দিয়ে র্যাপ করুন
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DoctorProfileScreen(
                        doctorName: doctorName,
                        specialty: specialty,
                      ),
                    ),
                  );
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      doctorName,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 9, 70, 151),
                      ), // ফন্ট সাইজ সামঞ্জস্য করুন
                      overflow: TextOverflow
                          .ellipsis, // নাম বেশি লম্বা হলে ... দেখাবে
                    ),

                    Text(
                      specialty,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 9, 70, 151),
                      ), // ফন্ট সাইজ সামঞ্জস্য করুন
                      overflow: TextOverflow
                          .ellipsis, // নাম বেশি লম্বা হলে ... দেখাবে
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.videocam,
              color: Color.fromARGB(255, 9, 70, 151),
              size: 28,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.call,
              color: Color.fromARGB(255, 9, 70, 151),
              size: 28,
            ),
          ),
        ],
      ),

      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(10),

              itemCount: dummyMessages.length,
              itemBuilder: (context, index) {
                final message = dummyMessages[index];
                final isMe = message.senderId == currentUserId;
                return _buildMessageRow(message, isMe);
              },
            ),
          ),
          _buildMessageComposer(),
        ],
      ),
    );
  }
}

Widget _buildMessageRow(Messagemodel message, bool isMe) {
  return Padding(
    padding: EdgeInsetsGeometry.symmetric(vertical: 10),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        if (!isMe)
          CircleAvatar(radius: 10, backgroundImage: AssetImage(message.image)),

        const SizedBox(width: 8),

        Container(
          padding: const EdgeInsetsDirectional.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          constraints: BoxConstraints(maxWidth: 240),
          decoration: BoxDecoration(
            color: isMe ? Colors.blueAccent : Colors.orangeAccent,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            message.text,
            style: TextStyle(color: isMe ? Colors.white : Colors.black),
          ),
        ),
        const SizedBox(width: 8),
        if (isMe)
          CircleAvatar(radius: 10, backgroundImage: AssetImage(message.image)),
      ],
    ),
  );
}

Widget _buildMessageComposer() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
    color: const Color.fromARGB(255, 235, 91, 0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.image,
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
          onPressed: () {},
        ),
        const Spacer(),
        SizedBox(
          width: 200,
          child: Card(
            elevation: 0,
            margin: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            color: const Color.fromARGB(255, 246, 152, 93),

            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),

              child: TextField(
                decoration: InputDecoration.collapsed(
                  hintText: 'Aa...',
                  hintStyle: TextStyle(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
        ),

        IconButton(
          icon: Icon(
            Icons.send,
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
          onPressed: () {},
        ),
      ],
    ),
  );
}
