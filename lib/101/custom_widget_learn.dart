import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget {
  const CustomWidgetLearn({super.key});
  final String title = 'Add to Card';
  final String title2 = 'Food';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(width: MediaQuery.of(context).size.width, child: CustomFootButton(title: title, onPressed: () {})),
          ),
          ),
          const SizedBox(height: 50),
          CustomFootButton(title: title2, onPressed: (){},),
        ],
      ),
      
    );
  }
}
mixin _ColorsUtility {
  final  Color ambercolor = Colors.amber;
  final Color white = Colors.white;
  final Color red = Colors.red;

}

mixin _PaddingUtility{
  final EdgeInsets normalPadding = const EdgeInsets.all(4);
  final EdgeInsets normal2xPadding = const EdgeInsets.all(8);
}


class CustomFootButton extends StatelessWidget with _ColorsUtility, _PaddingUtility{
   CustomFootButton({super.key, required this.title, required this.onPressed});
   final String title;
   final void Function() onPressed; //VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: red,
          shape: const StadiumBorder()
        ),
       child: Padding(
         padding: normal2xPadding,
         child: Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: white, fontWeight: FontWeight.bold),
         ),
       ));
  }
}