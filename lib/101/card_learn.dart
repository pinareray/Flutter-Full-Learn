import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  const Column(
        children: [
           Card(
            margin: ProjectMargins.cardMargin,
            shape: StadiumBorder(),
            child: SizedBox(
              height: 100,
               width: 400,
               child: Center(child: Text('Merhaba')),
               ),
          ),
           Card(
            margin: ProjectMargins.cardMargin,
            shape: StadiumBorder(),
            child: SizedBox(
              height: 100,
               width: 400,
               child: Center(child: Text('Hosgeldiniz')),
               ),
          ),

        
        
        ],
      ),
    );
  }
}

class ProjectMargins {
  static const cardMargin = EdgeInsets.all(10);
}


// ignore: unused_element
class _CustomCard extends StatelessWidget{
  final Widget child;
  _CustomCard({required this.child});
  final roundedRectangleBorder = RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));
  
  @override
  Widget build(BuildContext context) {
   
   return Card(
            margin: ProjectMargins.cardMargin,
            child: child,
          );
  }

}