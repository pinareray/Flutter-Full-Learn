import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learn/101/app_bar_learn.dart';
import 'package:flutter_full_learn/101/button_learn.dart';
import 'package:flutter_full_learn/101/card_learn.dart';
import 'package:flutter_full_learn/101/color_learn.dart';
import 'package:flutter_full_learn/101/column_row_learn.dart';
import 'package:flutter_full_learn/101/container_sized_box.dart';
import 'package:flutter_full_learn/101/custom_widget_learn.dart';
import 'package:flutter_full_learn/101/icon_learn.dart';
import 'package:flutter_full_learn/101/image_learn.dart';
import 'package:flutter_full_learn/101/indicator_learn.dart';
import 'package:flutter_full_learn/101/list_tile_learn.dart';
import 'package:flutter_full_learn/101/padding_learn.dart';
import 'package:flutter_full_learn/101/scaffold_learn.dart';
import 'package:flutter_full_learn/101/stack_learn.dart';
import 'package:flutter_full_learn/101/statefull_learn.dart';
import 'package:flutter_full_learn/101/stateless_learn.dart';
import 'package:flutter_full_learn/101/text_learn_view.dart';
import 'package:flutter_full_learn/demos/note_demos_view.dart';
import 'package:flutter_full_learn/demos/stack_demo_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key:key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        progressIndicatorTheme: const ProgressIndicatorThemeData(color: Colors.white),
        listTileTheme: const ListTileThemeData(contentPadding: EdgeInsets.zero),
        cardTheme: CardTheme(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
        ),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          elevation: 0,
        )
      ),
      home: const StatefullLearn(),
    );
  }
}



