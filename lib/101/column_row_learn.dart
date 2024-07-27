import 'package:flutter/material.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
         Expanded(
          flex: 4, //%40
          child: Row(
            children: [
              Expanded(child: Container(color: Colors.red)),
              Expanded(child: Container(color: Colors.blue)),
              Expanded(child: Container(color: Colors.pink)),
              Expanded(child: Container(color: Colors.yellow)),
            ],
          )),
          const Spacer(flex: 2),
          const Expanded(flex: 2,child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Pinar'),
              Text('Burak'),
              Text('Yağmur'),
            ],
          )),
        const SizedBox(
          height: ProjectContainerSizes.cardHeight,
          child: Column(
            children: [
              Expanded(child: Text('data')),
              Expanded(child: Text('data')),
              Expanded(child: Text('data')),
              Spacer(),
              Expanded(child: Text('data')),
            ],
          )),
        ],
      ),
    );
  }
}

class ProjectContainerSizes {
  static const double cardHeight = 200;
}