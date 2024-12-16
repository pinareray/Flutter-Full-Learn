import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/image_learn.dart';
import 'package:flutter_full_learn/101/navigate_detail_learn.dart';

class NavigationLearn extends StatefulWidget {
  const NavigationLearn({super.key});

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn> with NavigatorManager {
  
  List<int> selectedItems = [];

  void addSelected(int index) {
    setState(() {
      selectedItems.add(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context, index){
        return TextButton(
          onPressed: () async {final response = await navigateToWidgetNormal<bool>(context,
            NavigateDetailLearnDart(
             isOkey:  selectedItems.contains(index),
           ));
          if (response == true) {  
            addSelected(index);
          } 
          },
          child: Padding(
            padding:  const EdgeInsets.all(8.0),
            child:  Placeholder(
              color: selectedItems.contains(index) ? Colors.green : Colors.red,
            ),
          ),
        );
      },),
      floatingActionButton: FloatingActionButton(
        child:const Icon(Icons.navigation_rounded),
        onPressed: (){
        },
        ),
    );
  }
}

mixin NavigatorManager {
  void navigateToWidget(BuildContext context , Widget widget) {
     Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context){
        return widget;
    },
        fullscreenDialog: true,
        settings: const RouteSettings()),
    );
  }

    Future<T?> navigateToWidgetNormal<T>(BuildContext context , Widget widget) {
     return Navigator.of(context).push<T>(
      MaterialPageRoute(
        builder: (context){
        return widget;
    },
        fullscreenDialog: true,
        settings: const RouteSettings()),
    );
  }

}