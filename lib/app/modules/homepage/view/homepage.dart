// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/colors.dart';
import '../../../../utils/dimensions.dart';
import '../../../../widgets/big_text.dart';
import '../controller/homepage_controller.dart';

class HomePage extends GetView<HomePageController> {
  static const route = '/homepage';
  static launch() => Get.toNamed(route);
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            color: AppColors.black,
            // image: DecorationImage(
            //     image: AssetImage('assets/images/music_app_bckgrnd_img.png'),
            //     fit: BoxFit.cover),
          ),
          child: SafeArea(
            child: Padding(padding:EdgeInsets.symmetric(horizontal: 20),
            child:Column(
              children: [
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    // ignore: prefer_const_constructors
                    CircleAvatar(
                      backgroundColor: AppColors.white,
                      backgroundImage: AssetImage('assets/images/applogo.png'),
                    ),
                    BigText(text:'  HEY YA!')
                  ],
                ),
                SizedBox(height:Dimensions.height15),
                Expanded(flex: 11, child: Obx(() => controller.tab[controller.tabIndex])),
                Expanded(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        onPressed: () {controller.onChangeTab(0);},
                        icon: const Icon(
                          Icons.home,
                          color: AppColors.white,
                        )),
                    IconButton(
                        onPressed: () {controller.onChangeTab(1);},
                        icon: const Icon(Icons.search, color: AppColors.white)),
                    IconButton(
                      onPressed: () {controller.onChangeTab(2);},
                      icon: const Icon(Icons.public_outlined,
                          color: AppColors.white),
              )
             ],
           ))
          ],
        ),
            )
      )),
    );
  }
}
