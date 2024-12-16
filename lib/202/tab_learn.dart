import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_full_learn/101/app_bar_learn.dart';
import 'package:flutter_full_learn/101/button_learn.dart';
import 'package:flutter_full_learn/101/icon_learn.dart';
import 'package:flutter_full_learn/101/image_learn.dart';
import 'package:flutter_full_learn/101/padding_learn.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({super.key});

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin{

  late final TabController _tabController;
  final double notchedvalue = 5;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _MyTabView.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: _MyTabView.values.length, child: Scaffold(
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(onPressed: (){
        _tabController.animateTo(_MyTabView.login.index);}, shape: const CircleBorder(),),
      bottomNavigationBar:  BottomAppBar(
        notchMargin: notchedvalue,
        shape: const CircularNotchedRectangle(),
        child: _myTabView(),
      ),
      appBar: AppBar(),
      body: _tabbarView(),
    ));
  }

  TabBar _myTabView() {
    return TabBar(padding: EdgeInsets.zero,
      onTap: (int index){},controller: _tabController,
      tabs:_MyTabView.values.map((e) => Tab(text: e.name)).toList());
  }

  TabBarView _tabbarView() {
    return TabBarView(
    physics: const NeverScrollableScrollPhysics(),controller: _tabController,
    children:const [ButtonLearn(),AppBarView(),ImageLearn(),PaddingLearn()]);
  }
}

enum _MyTabView{login,menu,favorite,profile}

extension _MyTabViewExtension on _MyTabView {}

