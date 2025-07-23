import 'package:flutter/material.dart';

class FullscreenImage extends StatelessWidget {
  final String imagePath;
  const FullscreenImage({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Center(child: InteractiveViewer(child: Image.asset(imagePath))),

          Positioned(
            right: 10,

            top: 170,
            child: IconButton(
              icon: const Icon(
                Icons.close,
                color: Color.fromARGB(255, 255, 255, 255),
                size: 30,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
