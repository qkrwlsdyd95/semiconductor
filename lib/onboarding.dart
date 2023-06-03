import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:semiconductor/main.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      done: const Text('done'),
      pages: [
        PageViewModel(
            title: 'Welcome',
            body: 'this is my first page',
            image: Image.asset('image/onboarding.jpg'),
            decoration: getPageDecoration()),
        PageViewModel(
            title: 'Welcome',
            body: 'this is my second page',
            image: Image.asset('image/onboarding.jpg'),
            decoration: getPageDecoration()),
        PageViewModel(
            title: 'Welcome',
            body: 'this is my third page',
            image: Image.asset('image/onboarding.jpg'),
            decoration: getPageDecoration()),
      ],
      onDone: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const MyPage(),
        ));
      },
      next: const Icon(Icons.arrow_forward),
      showSkipButton: true,
      skip: const Text("skip"),
      dotsDecorator: DotsDecorator(
          color: Colors.cyan,
          size: const Size(10, 10),
          activeSize: const Size(22, 10),
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          activeColor: Colors.red),
      curve: Curves.bounceOut,
    );
  }

  PageDecoration getPageDecoration() {
    return const PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(
          fontSize: 18,
          color: Colors.blue,
        ),
        imagePadding: EdgeInsets.only(top: 40),
        pageColor: Colors.orange);
  }
}
