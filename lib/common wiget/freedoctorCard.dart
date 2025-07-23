// lib/common_widget/free_consultant_card.dart (সংশোধিত কোড)
import 'package:flutter/material.dart';

import 'package:tlmdcin/scrn/drprofile.dart'; // নতুন স্ক্রিন ইম্পোর্ট করুন

class FreeConsultantCard extends StatelessWidget {
  final String doctorName;
  final String specialty;

  const FreeConsultantCard({
    super.key,
    required this.doctorName,
    required this.specialty,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
      child: Card(
        color: const Color.fromARGB(255, 243, 234, 206),
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // গোলাকার কোণ
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      doctorName,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Color.fromARGB(255, 9, 70, 151), // নীল লেখা
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                  Container(
                    width: 10,
                    height: 10,
                    margin: const EdgeInsets.only(left: 4),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 235, 91, 0), // কমলা ডট
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
              Text(
                specialty,
                style: TextStyle(fontSize: 12, color: Colors.grey[600]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
