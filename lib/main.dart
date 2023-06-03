import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:semiconductor/photo.dart';

import 'onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: OnBoardingPage(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Semiconductor'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Text('반도체 취업 성공의 지름길!'),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => OnBoardingPage(),));
                  
                  // 온보딩 페이지로 넘어가기
                },
                child: const Text('어플 사용 설명')),

            ElevatedButton(onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Photo(),));

            }, child: Text("Photo공정"))
          ],
        ),
      ),
    );
  }
}
