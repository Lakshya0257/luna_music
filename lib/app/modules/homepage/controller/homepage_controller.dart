import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
  @override
  void onInit()async{
    super.onInit();
    await artists();
    await albums();
    await recommendation();
  }
  List artistsList=[];
  List albumsList=[];
  List recommendationList=[];
  Future<void> artists()async {
    final String response=await rootBundle.loadString('assets/json_dumy_data/artists.json');
    final data=await jsonDecode(response);
    artistsList=data['artists'];
    update();
  }
  Future<void> albums()async {
    final String response=await rootBundle.loadString('assets/json_dumy_data/albums.json');
    final data=await jsonDecode(response);
    albumsList=data['albums']['items'];
    update();
  }
   Future<void> recommendation()async {
    final String response=await rootBundle.loadString('assets/json_dumy_data/recommendation.json');
    final data=await jsonDecode(response);
    
    recommendationList=data['tracks'];
    update();
    
  }
}