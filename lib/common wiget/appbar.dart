import 'package:flutter/material.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String titleText;

  const CommonAppBar({super.key, required this.titleText});

  @override
  Widget build(BuildContext context) {
    // Determine split logic
    String firstPart = '';
    String secondPart = '';

    if (titleText.length <= 4) {
      firstPart = titleText.substring(0, 2);
      secondPart = titleText.substring(2);
    } else {
      firstPart = titleText.substring(0, 4);
      secondPart = titleText.substring(4);
    }

    return AppBar(
      backgroundColor: const Color.fromARGB(255, 243, 234, 206),
      elevation: 0,
      automaticallyImplyLeading: true,
      iconTheme: const IconThemeData(color: Color.fromARGB(255, 235, 91, 0)),
      title: RichText(
        text: TextSpan(
          style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          children: <TextSpan>[
            TextSpan(
              text: firstPart,
              style: const TextStyle(color: Color.fromARGB(255, 235, 91, 0)),
            ),
            TextSpan(
              text: secondPart,
              style: const TextStyle(color: Color.fromARGB(255, 9, 70, 151)),
            ),
          ],
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications,
            color: Color.fromARGB(255, 235, 91, 0),
            size: 36,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
