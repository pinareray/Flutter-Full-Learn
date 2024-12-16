// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class NavigateDetailLearnDart extends StatefulWidget {
  const NavigateDetailLearnDart({super.key,this.isOkey=false,});
  final bool isOkey;

  @override
  State<NavigateDetailLearnDart> createState() => _NavigateLearnDartState();
}

class _NavigateLearnDartState extends State<NavigateDetailLearnDart> {

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    //ModalRoute.of(context).settings.arguments;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton.icon(
          onPressed: (){
            Navigator.of(context).pop(!widget.isOkey);
          },
          icon: const Icon(Icons.check, color:Colors.green),
          label: widget.isOkey ? const Text('Red'): const Text('Onayla')),
      ),
    );
  }
}