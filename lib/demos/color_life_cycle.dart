import 'package:flutter/material.dart';
import 'package:flutter_full_learn/demos/color_demos_view.dart';

class ColorLifeCycle extends StatefulWidget {
  const ColorLifeCycle({super.key});

  @override
  State<ColorLifeCycle> createState() => _ColorLifeCycleState();
}

class _ColorLifeCycleState extends State<ColorLifeCycle> {

  Color? _backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [IconButton(onPressed: (){
        setState(() {
          _backgroundColor = Colors.pink;
        });
      },
      icon: const Icon(Icons.clear))]),
      body: Column(children: [const Spacer(),Expanded(child: ColorDemos(initialColor:_backgroundColor ))],),
    );
  }
}