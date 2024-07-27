import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({super.key});
  final IconSizes iconSize = IconSizes();
  final IconColors iconColors = IconColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text('Hello')),
      body: Column(
        children:[
          IconButton(
          onPressed: (){},
          icon: const Icon(
            Icons.message_outlined,
            color: Colors.green,
            size:30,
            )),
          const SizedBox(height: 50),
          IconButton(
          onPressed: (){},
          icon: Icon(
            Icons.message_outlined,
            color: iconColors.froly,
            size:iconSize.iconSmall,
            )),
          IconButton(
          onPressed: (){},
          icon: const Icon(
            Icons.message_outlined,
            color: Colors.red,
            size:IconSizes.iconSmall2x,
            )),
            

        ],
      ),
    );
  }
}

class IconSizes{

  final double iconSmall = 30;
  static const double iconSmall2x = 50;
}

class IconColors{

  final Color froly = const Color(0xffED617A);

}