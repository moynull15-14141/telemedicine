import 'package:flutter/material.dart';
import 'package:tlmdcin/data/messageData.dart';
import 'package:tlmdcin/data/messageListData.dart';
import 'package:tlmdcin/model/messageListmodel.dart';
import 'package:tlmdcin/model/messageModel.dart';
import 'package:tlmdcin/model/userModel.dart';
import 'package:tlmdcin/scrn/chatBox.dart';

class Chat extends StatefulWidget {
  final UserModel user;
  final Messagelistmodel messagelistmodel;

  const Chat({super.key, required this.user, required this.messagelistmodel});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 234, 206),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(50),
                  child: Image.asset(
                    widget.user.image,
                    fit: BoxFit.cover,
                    height: 70,
                    width: 70,
                  ),
                ),
                const SizedBox(width: 8),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.user.name,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 9, 70, 151),
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),

                    Text(
                      "Next Appointment: ${widget.user.nextAppointment}",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(255, 235, 91, 0),
                      ), //
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 10),

            Expanded(
              child: Card(
                color: const Color.fromARGB(255, 243, 234, 206),
                elevation: 1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: ListView.builder(
                  itemCount: dummyMessageList.length,
                  itemBuilder: (context, index) {
                    final message = dummyMessageList[index];

                    return InkWell(
                      onTap: () {
                        //message filtaring
                        String selectedDoctorId = message.senderId;
                        String patientId = widget.user.id;

                        List<String> ids = [selectedDoctorId, patientId]
                          ..sort();
                        String currentmessageid = ids.join('_');

                        List<Messagemodel> selectedmessage = dummyMessages
                            .where((msg) => msg.messageid == currentmessageid)
                            .toList();

                        // List<Messagemodel> selectedMessages = dummyMessages
                        //     .where(
                        //       (msg) =>
                        //           msg.senderId == selectedDoctorId ||
                        //           msg.senderId == patientId,
                        //     )
                        //     .toList();

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => chatBox(
                              doctorName: message.senderName,
                              doctorImage: message.image,
                              specialty: message.specialty,
                              messages: selectedmessage,
                              currentUserId: widget.user.id,
                            ),
                          ),
                        );
                      },

                      child: Container(
                        margin: const EdgeInsets.symmetric(
                          vertical: 4.0,
                          horizontal: 0.0,
                        ),
                        // elevation: 2, // Add a little shadow
                        // shape: RoundedRectangleBorder(
                        //   borderRadius: BorderRadius.circular(
                        //     10,
                        //   ), // Rounded corners for the card
                        // ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  message.image,
                                  fit: BoxFit.cover,
                                  height: 60,
                                  width: 60,
                                ),
                              ),
                              const SizedBox(width: 12),

                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      message.senderName,
                                      style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 9, 70, 151),
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      message.lastMessage,
                                      style: const TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
