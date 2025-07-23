import 'package:flutter/material.dart';
import 'package:tlmdcin/common%20wiget/SpecialtyCard.dart';

class Specialties extends StatelessWidget {
  const Specialties({super.key});

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
              "Specialties",
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
                children: const [
                  SpecialtyCard(
                    icon: Icons.local_hospital,
                    title: 'Primary Care',
                    backgroundColor: Color.fromARGB(255, 9, 70, 151),
                  ),
                  SpecialtyCard(
                    icon: Icons.face,
                    title: 'Dermatology',
                    backgroundColor: Color.fromARGB(255, 9, 70, 151),
                  ),
                  SpecialtyCard(
                    icon: Icons.favorite,
                    title: 'Cardiology',
                    backgroundColor: Color.fromARGB(255, 9, 70, 151),
                  ),
                  SpecialtyCard(
                    icon: Icons.child_care,
                    title: 'Pediatrics',
                    backgroundColor: Color.fromARGB(255, 9, 70, 151),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 8),
        ],
      ),
    );
  }
}
