//Bir ekran, üç buton ve butonlara basıldığında renk değişşimi. Seçili buton selected icon

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ColorDemos extends StatefulWidget {
  const ColorDemos({super.key, required this.initialColor});
  final Color? initialColor;
  @override
  State<ColorDemos> createState() => _ColorDemosState();
}

class _ColorDemosState extends State<ColorDemos> {

  Color? _backgroundColor;

  @override
  void initState() { //life gönderdik
    super.initState();
    _backgroundColor = widget.initialColor ?? Colors.transparent;
  }

  @override
  void didUpdateWidget(covariant ColorDemos oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.initialColor != _backgroundColor && widget.initialColor != null) {
      changeBackgroundColor(widget.initialColor!);
    }
  }

  void changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: _backgroundColor,
      bottomNavigationBar: BottomNavigationBar( onTap: _colorOnTap,items:const [
        BottomNavigationBarItem(icon: _ColorContainer(color: Colors.red), label: 'Red'),
        BottomNavigationBarItem(icon: _ColorContainer(color: Colors.yellow), label: 'Yellow'),
        BottomNavigationBarItem(icon: _ColorContainer(color: Colors.blue), label: 'Blue'),
      ]),
    );
  }

void _colorOnTap(int value) {
        if (value == _MyColors.red.index) {
          changeBackgroundColor(Colors.red);
        }else if (value == _MyColors.yellow.index) {
          changeBackgroundColor(Colors.yellow);
        }else if (value == _MyColors.blue.index){
          changeBackgroundColor(Colors.blue);
        }
}


}


enum _MyColors { red, yellow, blue}

class _ColorContainer extends StatelessWidget {
  const _ColorContainer({
    super.key, required this.color,
  });
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(color: color, width: 10, height: 10);
  }
}