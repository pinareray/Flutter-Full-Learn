import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StatelessLearn extends StatelessWidget{
  final String text2 = "pinar";
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:   Column(
        children: [
         TitleTextWidget(text: text2),
        const TitleTextWidget(text: "samantha",),
         _emptyBox(),
        const TitleTextWidget(text: "marcus",),
         _emptyBox(),
        const TitleTextWidget(text: "alice",),
        const _CustomContainer(),

        _emptyBox(),
        ],
      ),
    );
  }

  SizedBox _emptyBox() => const SizedBox(height: 10);
}

class _CustomContainer extends StatelessWidget {
  const _CustomContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
     decoration:BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.red),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
            text,
            style: Theme.of(context).textTheme.headlineLarge,
            );
  }
}