import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learn/101/image_learn.dart';

class NoteDemos extends StatelessWidget {
  const NoteDemos({super.key});
  final _title = 'Learn To Love';
  final _metin = ' Ad your comment';
  final _button ='Login';
  final _button2 = 'Sign up';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(systemOverlayStyle: SystemUiOverlayStyle.dark),
      body: Padding(
        padding: PaddingItems.horizontalPadding,
        child: Column(
          children: [
           Padding( padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 100),child: Image.asset('assets/png/images.png')),
           _TitleWidget(title: _title),
           Padding(padding: PaddingItems.verticalPadding,child: _SubTitleWidget(title:_metin),),
           const Spacer(),
           _createButton(context),
           OutlinedButton(onPressed: (){}, child: Text(_button2)),
           const SizedBox(height: ButtonHeights.buttonNormalHeight),
          ],
        ),
      ),
    );
  }

  ElevatedButton _createButton(BuildContext context) {
    return ElevatedButton(
          onPressed: (){},
           child: SizedBox(
            height: ButtonHeights.buttonNormalHeight,
            child:Center(child:
             Text(
              _button, 
              style: Theme.of(context).textTheme.headlineMedium,
             ))));
  }
}

class _SubTitleWidget extends StatelessWidget {
  const _SubTitleWidget({super.key,this.textAlign = TextAlign.center,required this.title,});

  final TextAlign textAlign;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
     title,
     textAlign: textAlign,
     style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.black,fontWeight: FontWeight.w400),
              );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
     title, 
     style: Theme.of(context).textTheme.headlineLarge?.copyWith(color: Colors.black,fontWeight: FontWeight.w800),
     
     );
  }
}

class PaddingItems {

 static const EdgeInsets horizontalPadding = EdgeInsets.symmetric(horizontal: 20);
 static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 20);

  
}

class ButtonHeights {
  static const double buttonNormalHeight = 40;
}