import 'package:flutter/material.dart';
import 'package:tlmdcin/scrn/drprofile.dart'; // DoctorProfileScreen ইম্পোর্ট করুন

class dcard extends StatelessWidget {
  final String title;
  final Image? image;
  final String starRating;
  final String specialty; // <-- নতুন specialty প্রপার্টি যোগ করুন

  const dcard({
    super.key,
    required this.title,
    this.image,
    required this.starRating,
    required this.specialty, // <-- specialty কে required করুন
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // <-- GestureDetector দিয়ে মোড়ান
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DoctorProfileScreen(
              doctorName: title, // dcard এর title ই এখানে doctorName
              specialty: specialty, // <-- এখানে specialty পাস করুন
            ),
          ),
        );
      },
      child: SizedBox(
        width: 210,
        height: 65,
        child: Card(
          color: const Color.fromARGB(255, 243, 234, 206),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    shape: BoxShape.rectangle,
                    color: const Color.fromARGB(255, 217, 217, 217),
                  ),
                  child:
                      image ?? Icon(Icons.person, size: 40, color: Colors.grey),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue.shade900,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      Text(
                        specialty, // <-- এখন specialty প্রপার্টি ব্যবহার করুন
                        style: TextStyle(
                          fontSize: 14,
                          color: const Color.fromARGB(255, 9, 70, 151),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            starRating,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.orange,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: 4),
                          Icon(Icons.star, color: Colors.orange, size: 16),
                        ],
                      ),
                    ],
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
