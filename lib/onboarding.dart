import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:semiconductor/main.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      done: const Text("Done"),
      pages: [
        PageViewModel(
            title: '온보딩1',
            body: '앱 설명1',
            image: Image.asset('image/onboarding.jpg'),
            decoration: getPageDecoration()),
        PageViewModel(
            title: '온보딩2',
            body: '앱 설명2',
            image: Image.asset('image/onboarding.jpg'),
            decoration: getPageDecoration()),
        PageViewModel(
            title: '온보딩3',
            body: '앱 설명3',
            image: Image.asset('image/onboarding.jpg'),
            decoration: getPageDecoration())
      ],
      onDone: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ));
      },
      next: const Icon(Icons.arrow_forward),
      showSkipButton: true,
      skip: const Text("skip"),
    );
  }

  PageDecoration getPageDecoration() {
    return const PageDecoration(
        pageColor: Colors.green,
        titleTextStyle: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          letterSpacing: 5.0,
          fontStyle: FontStyle.italic,
        ),
        bodyTextStyle: TextStyle(
          fontSize: 18,
        ));
  }
}
