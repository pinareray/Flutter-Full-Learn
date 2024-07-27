import 'package:flutter/material.dart';

class ColorLearn extends StatelessWidget {
  const ColorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(color: ColorsItems.sulu, child: const Text('My Home')),
    );
  }
}

class ColorsItems{

  static const Color porchase = Color(0xffEDBF61);
  static const Color sulu = Color.fromARGB(198, 237, 97, 1);
}