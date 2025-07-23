import 'package:tlmdcin/model/appointmentModel.dart';

final List<AppointmentModel> upcomingAppointments = [
  AppointmentModel(
    time: "Today at 10:00 AM",
    method: "Video Call",
    doctor: "Dr. Sumit",
    department: "Cardiology",
    imagePath: 'assets/dm1.jpeg',
  ),
  AppointmentModel(
    time: "Tomorrow at 11:00 AM",
    method: "In-Person",
    doctor: "Dr.Ayesha",
    department: "Dermatology",
    imagePath: 'assets/dm3.jpeg',
  ),
  AppointmentModel(
    time: "Tomorrow at 1:00 AM",
    method: "In-Person",
    doctor: "Dr.Sajid",
    department: "Dermatology",
    imagePath: 'assets/dm2.jpeg',
  ),
];
