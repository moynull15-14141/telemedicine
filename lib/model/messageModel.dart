class Messagemodel {
  final String text;
  final String senderId;
  final String senderName;
  final String time;
  final String image;
  final String specialty; // New field for doctor's specialty

  Messagemodel({
    required this.text,
    required this.senderId,
    required this.senderName,
    required this.time,
    required this.image,
    required this.specialty, // Initialize the specialty field
  });
}
