import 'package:flutter/material.dart';
import 'package:tlmdcin/common%20wiget/doctor_data.dart';
import 'package:tlmdcin/common%20wiget/freedoctorCard.dart';

class Freeconsultant extends StatelessWidget {
  const Freeconsultant({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 243, 234, 206),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 12,
          left: 12,
          right: 12,
          bottom: 12,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Free Consultant",
              style: TextStyle(
                color: const Color.fromARGB(255, 235, 91, 0),
                fontSize: 26,
                fontWeight: FontWeight.w400,
              ),
            ),
            Container(
              height: 220,
              color: const Color.fromARGB(255, 217, 217, 217),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: GridView.builder(
                  shrinkWrap: false, // নেস্টেড স্ক্রল ভিউ এর জন্য গুরুত্বপূর্ণ
                  physics: AlwaysScrollableScrollPhysics(),
                  // NeverScrollableScrollPhysics(), // GridView-এর নিজস্ব স্ক্রলিং অক্ষম করুন
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // 2 কলাম
                    crossAxisSpacing: 10, // কলামগুলির মধ্যে ফাঁকা স্থান
                    mainAxisSpacing: 10, // সারিগুলির মধ্যে ফাঁকা স্থান
                    childAspectRatio:
                        2.5, // কার্ডের উচ্চতা/প্রস্থ নিয়ন্ত্রণ করতে অ্যাসপেক্ট রেশিও (aspect ratio) সামঞ্জস্য করুন
                  ),
                  itemCount: freeConsultants.length,
                  itemBuilder: (context, index) {
                    return FreeConsultantCard(
                      doctorName: freeConsultants[index]['name']!,
                      specialty: freeConsultants[index]['specialty']!,
                    );
                  },
                ),
              ),
            ),

            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
