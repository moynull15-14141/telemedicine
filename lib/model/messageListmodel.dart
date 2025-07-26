class Messagelistmodel {
  final String senderId;
  final String senderName;
  final String image;
  final String lastMessage;
  final String specialty;
  final String messageid; // New field for message ID

  Messagelistmodel({
    required this.senderId,
    required this.senderName,
    required this.image,
    required this.lastMessage,
    required this.specialty,
    required this.messageid, // Initialize the message ID field
  });
}
