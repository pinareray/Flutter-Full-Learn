import 'package:flutter/material.dart';
//import sadece ana dosyada olur yani part dosyasında. 
part 'part_appbar.dart';

class PartOfLearn extends StatefulWidget {
  const PartOfLearn({super.key});

  @override
  State<PartOfLearn> createState() => _PartOfLearnState();
}

class _PartOfLearnState extends State<PartOfLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _PartofAppbar(),
    );
  }
}

