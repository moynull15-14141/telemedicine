import 'package:flutter/material.dart';
import 'package:tlmdcin/common%20wiget/doctor%20card.dart';
import 'package:tlmdcin/common%20wiget/doctor_data.dart';

class TopDoctor extends StatelessWidget {
  const TopDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 243, 234, 206),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 12, left: 12),
            child: Text(
              "Top Doctors",
              style: TextStyle(
                color: const Color.fromARGB(255, 235, 91, 0),
                fontSize: 26,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),

          // SizedBox(height: 8),
          SizedBox(
            height: 95,
            child: Container(
              color: const Color.fromARGB(255, 217, 217, 217),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: topDoctorsData.map((doctor) {
                  return dcard(
                    starRating: doctor['starRating']!,
                    image: Image(
                      image: AssetImage(doctor['imageAsset']!),
                      fit: BoxFit.cover,
                    ),
                    title: doctor['name']!,
                    specialty: doctor['specialty']!,
                  );
                }).toList(),
              ),
            ),
          ),

          SizedBox(height: 8),
        ],
      ),
    );
  }
}
