// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});
  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children:[
          SizedBox(
            height: 100,
            width: 100,
            child: PngImage(path: ImageItems().appleWithBook),
            ),
          Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLkCUIVbS5gKOf4Qo1BtTJRnF0Xggqii9ZkQ&s',
            errorBuilder: (context, error, stackTrace) => const Icon(Icons.abc_outlined),
          ),
      ]),
    );
  } 
}

class ImageItems {

  final String appleWithBook = "assets/apple-and-book-png-transparent-apple-and-book-images-274565.png";
  final String appleBook = "assets/png/images.png";
}

class PngImage extends StatelessWidget {
  const PngImage({Key? key,required this.path,}) : super(key: key);
  final String path;

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/$path.png', fit: BoxFit.cover);
  }
}
