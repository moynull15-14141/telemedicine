import 'package:flutter/material.dart';
import 'package:tlmdcin/common%20wiget/appbar.dart';
import 'package:tlmdcin/common%20wiget/freeConsultant.dart';
import 'package:tlmdcin/common%20wiget/specialty.dart';
import 'package:tlmdcin/common%20wiget/top%20consultant.dart';
import 'package:tlmdcin/common%20wiget/topdoctor.dart';
import 'package:tlmdcin/scrn/appointment.dart';
import 'package:tlmdcin/scrn/chat.dart';

import 'package:tlmdcin/scrn/profile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  // চারটি পেজের লিস্ট
  final List<Widget> _pages = [
    const HomeContent(),
    const Appointment(),
    const chat(),
    const Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  String _getTitleText(int index) {
    switch (index) {
      case 0:
        return 'Telemedicien';
      case 1:
        return 'Appointment';
      case 2:
        return 'Chat';
      case 3:
        return 'Profile';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 234, 206),
      appBar: CommonAppBar(titleText: _getTitleText(_selectedIndex)),

      body: _pages[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 9, 70, 151),
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 174, 209, 255),
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Appointment',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}

// মূল Home এর UI অংশ এখানে
class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(14, 0, 14, 0),
        child: Column(
          children: [
            Topconsultant(),
            const SizedBox(height: 10),
            const Specialties(),
            const SizedBox(height: 10),
            const TopDoctor(),
            const SizedBox(height: 10),
            const Freeconsultant(),
          ],
        ),
      ),
    );
  }
}
