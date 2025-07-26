class UserModel {
  final String id;
  final String name;
  final String image;
  final String nextAppointment;
  final String email;
  final String phone;
  final String address;
  final String sex;
  final String age;
  final String bloodGroup;
  final String bloodPressure;
  final String diabetes;

  // New field for next appointment

  UserModel({
    required this.id,
    required this.name,
    required this.image,
    required this.nextAppointment,
    required this.email,
    required this.phone,
    required this.address,
    required this.age,
    required this.bloodGroup,
    required this.bloodPressure,
    required this.diabetes,
    required this.sex,
  });
}
