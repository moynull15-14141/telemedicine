import 'package:flutter/material.dart';
import 'package:tlmdcin/common%20wiget/fullscrnimage.dart';
import 'package:tlmdcin/data/AppointmentData.dart';

class Appointment extends StatelessWidget {
  const Appointment({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          const SizedBox(height: 10),
          const TabBar(
            indicator: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Color.fromARGB(255, 9, 70, 151),
                  width: 3.0,
                ),
              ),
            ),
            labelColor: Color.fromARGB(255, 9, 70, 151),
            unselectedLabelColor: Color.fromARGB(255, 235, 91, 0),
            tabs: [
              Tab(child: Text('Upcoming', style: TextStyle(fontSize: 18))),
              Tab(child: Text('Past', style: TextStyle(fontSize: 18))),
            ],
          ),
          const SizedBox(height: 6), // TabBar আর TabBarView-এর মাঝে gap

          Expanded(
            child: TabBarView(
              children: [
                // ✅ Upcoming Tab
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: ListView.separated(
                    itemCount: upcomingAppointments.length,
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 12),
                    itemBuilder: (context, index) {
                      final appointment = upcomingAppointments[index];
                      return Card(
                        color: const Color.fromARGB(255, 149, 169, 184),
                        child: SizedBox(
                          height: 150,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => FullscreenImage(
                                          imagePath: appointment.imagePath,
                                        ),
                                      ),
                                    );
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadiusGeometry.circular(
                                      10,
                                    ),
                                    child: Image.asset(
                                      appointment.imagePath,
                                      width: 100,
                                      height: 130,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        appointment.time,
                                        style: const TextStyle(
                                          fontSize: 22,
                                          color: Colors.white,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                      ),
                                      Text(
                                        appointment.method,
                                        style: const TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        appointment.doctor,
                                        style: const TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        appointment.department,
                                        style: const TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),

                // ✅ Past Tab
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: ListView.separated(
                    itemCount: upcomingAppointments.length,
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 12),
                    itemBuilder: (context, index) {
                      final appointment = upcomingAppointments[index];
                      return Card(
                        color: const Color.fromARGB(255, 235, 91, 0),
                        child: SizedBox(
                          height: 150,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => FullscreenImage(
                                          imagePath: appointment.imagePath,
                                        ),
                                      ),
                                    );
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadiusGeometry.circular(
                                      10,
                                    ),
                                    child: Image.asset(
                                      appointment.imagePath,
                                      width: 100,
                                      height: 130,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        appointment.time,
                                        style: const TextStyle(
                                          fontSize: 22,
                                          color: Colors.white,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                      ),
                                      Text(
                                        appointment.method,
                                        style: const TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        appointment.doctor,
                                        style: const TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        appointment.department,
                                        style: const TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
