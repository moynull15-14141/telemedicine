class UserModel {
  final String id;
  final String name;
  final String image;
  final String nextAppointment; // New field for next appointment

  UserModel({
    required this.id,
    required this.name,
    required this.image,
    required this.nextAppointment,
  });
}
