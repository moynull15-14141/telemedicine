import 'package:flutter/material.dart';

class SpecialtyCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color backgroundColor;

  const SpecialtyCard({
    super.key,
    required this.icon,
    required this.title,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      // height: 120, // fixed height to prevent overflow
      child: Card(
        color: const Color.fromARGB(255, 243, 234, 206),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  size: 35,
                  color: const Color.fromARGB(255, 243, 234, 206),
                ),

                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 243, 234, 206),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
