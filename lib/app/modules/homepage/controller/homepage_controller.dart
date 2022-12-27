import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../searchpage/view/searchpage.dart';
import '../view/first_tab.dart';

class HomePageController extends GetxController{
  final _tabIndex=0.obs;
  int get tabIndex=>_tabIndex.value;
  List<Widget> tab=[const FirstTab(),SearchPage(),Container()];
  onChangeTab(int x){
    _tabIndex(x);
  }
}