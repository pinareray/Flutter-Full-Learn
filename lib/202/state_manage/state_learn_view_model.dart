

import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/state_manage/state_manage_learn_view.dart';

abstract class StateLearnViewModel extends State<StateManageLearnView> {
  @override
  void initState() {
    super.initState();
  }

  bool isVisible = false;
  bool isOpacity = false;

  
  void changeVisible() {
    super.setState((){
        isVisible = !isVisible;
    });
  }

  void changeOpacity() {
    super.setState((){
        isOpacity = !isOpacity;
    });
  }

  
}
