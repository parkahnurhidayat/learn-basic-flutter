import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';

class Introduction extends StatelessWidget {
  const Introduction({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Title of blue page",
          body:
              "Welcome to the app! This is a description on a page with a blue background.",
          image: Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Center(
              child: Lottie.asset(
                'assets/page1.json',
              ),
            ),
          ),
        ),
        PageViewModel(
          title: "Title of blue page",
          body:
              "Welcome to the app! This is a description on a page with a blue background.",
          image: Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Center(
              child: Lottie.asset(
                'assets/page2.json',
              ),
            ),
          ),
        )
      ],
      next: const Icon(Icons.navigate_next_outlined),
      showNextButton: true,
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      onDone: () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const MyHome(),
            ));
      },
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Home'),
      ),
    );
  }
}
