import 'package:flutter/material.dart';

class Photo extends StatelessWidget {
  const Photo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text('Photo공정 기출'),),
      body: Column(
        children: [
          SizedBox(height: 20,width: 20,),
          Text("Photo공정의 이해")
        ],
      ),
      
      
    );
  }
}
