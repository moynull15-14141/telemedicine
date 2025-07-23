import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Topconsultant extends StatefulWidget {
  const Topconsultant({super.key});

  @override
  State<Topconsultant> createState() => _TopconsultantState();
}

class _TopconsultantState extends State<Topconsultant> {
  final PageController _controller = PageController();
  int currentPage = 0;

  void initState() {
    super.initState();
    // Auto-slide every 3 seconds
    Future.doWhile(() async {
      await Future.delayed(const Duration(seconds: 3));
      if (_controller.hasClients) {
        int nextPage = (currentPage + 1) % 3;
        _controller.animateToPage(
          nextPage,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
        setState(() {
          currentPage = nextPage;
        });
      }
      return true;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            "Top consultant",
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 22,
              color: Color.fromARGB(255, 9, 70, 151),
            ),
          ),
        ),

        SizedBox(height: 10),

        SizedBox(
          height: 200,
          child: PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                currentPage = index;
              });
            },
            children: [
              Image.asset('assets/dm1.jpeg', fit: BoxFit.fitHeight),
              Image.asset('assets/dm2.jpeg', fit: BoxFit.fitHeight),
              Image.asset('assets/dm3.jpeg', fit: BoxFit.fitHeight),
            ],
          ),
        ),
        SizedBox(height: 5),
        Center(
          child: SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: const WormEffect(
              dotColor: const Color.fromARGB(255, 9, 70, 151),
              activeDotColor: const Color.fromARGB(255, 235, 91, 0),
              dotHeight: 7,
              dotWidth: 7,
            ),
          ),
        ),
      ],
    );
  }
}
