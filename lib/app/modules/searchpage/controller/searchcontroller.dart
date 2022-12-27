import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchPageController extends GetxController{
  final List<String> searchList = [
    'Songs',
    'Albums',
    'Artists',
    'Playlists',
    // 'Genres',
    // 'Moods',
    // 'Profiles'
  ];

  bool onCheck = false;

  String? selectedValue;
  onSearchChange(String x) {
    selectedValue = x;
    update();
  }

  final TextEditingController bankNameController = TextEditingController();
}