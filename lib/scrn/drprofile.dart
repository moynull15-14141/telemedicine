// lib/screens/doctor_profile_screen.dart
import 'package:flutter/material.dart';

class DoctorProfileScreen extends StatelessWidget {
  final String doctorName;
  final String specialty;

  const DoctorProfileScreen({
    super.key,
    required this.doctorName,
    required this.specialty,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(doctorName),
        backgroundColor: const Color.fromARGB(255, 9, 70, 151),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to $doctorName\'s Profile!',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text('Specialty: $specialty', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // এখানে অ্যাপয়েন্টমেন্ট বুক করার বা কনসালট করার লজিক থাকতে পারে
                // For now, just navigate back
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 235, 91, 0),
                foregroundColor: Colors.white,
              ),
              child: const Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}
