import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luna/app/modules/homepage/controller/homepage_controller.dart';
import 'package:luna/utils/colors.dart';
import 'package:luna/widgets/big_text.dart';
import 'package:luna/widgets/button.dart';
import 'package:luna/widgets/small_text.dart';

import '../../../../utils/dimensions.dart';

class PlaylistPage extends GetView<HomePageController> {
  static const route = '/playlist-page';
  static launch() => Get.toNamed(route);
  const PlaylistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/music_app_bckgrnd_img.png'),
                  fit: BoxFit.cover),
            ),
        child: Padding(
          padding:  EdgeInsets.only(top: Dimensions.height40*1.5, bottom: Dimensions.height40),
          child: Column(
            children: [
              SizedBox(height: Dimensions.height10*1.5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                CircleAvatar(
                  radius: Dimensions.radius30*2.2,
                  backgroundImage: AssetImage('assets/images/browse_img.png'),
                ),
                SizedBox(
                  width: Dimensions.width20,
                ),
                BigText(text: 'My Playlist#1', color: AppColors.white, fontWeight: FontWeight.w500,)
              ],),
              SizedBox(height: Dimensions.height20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Button(on_pressed: (){}, text: 'Shuffle All', width: Dimensions.width40*4, height: Dimensions.height40*1.3,color: Color(0xFFCBC3E3), textColor: AppColors.black,),
                SizedBox(width: Dimensions.width20,),
                Button(on_pressed: (){}, text: 'Play All', width: Dimensions.width40*4, height: Dimensions.height40*1.3, color: Color(0xFFCBC3E3), textColor: AppColors.black)
              ],),
              SizedBox(height: Dimensions.height20,),
              // SizedBox(
              //   height: Dimensions.height20,
              // ),
              Expanded(
                  child: ListView.builder(
                      itemCount: 8,
                      itemBuilder: ((context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            children: [
                              Container(
                                width: Dimensions.width40*1.3,
                                height: Dimensions.height40*1.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(Dimensions.radius15/2)),
                                  color: AppColors.dimWhite
                                ),
                              ),
                              SizedBox(
                                width: Dimensions.width30,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  BigText(
                                    text: 'Starboy',
                                    color: AppColors.dimWhite,
                                  ),
                                  SizedBox(height: Dimensions.height10/3,),
                                  SmallText(text: 'The Weekend', color: AppColors.dimWhite,)
                                ],
                              ),
                              SizedBox(width: Dimensions.width40*3.8,),
                              Icon(Icons.more_vert, color: AppColors.dimWhite, size: Dimensions.iconSize24*1.6,)
                            ],
                          ),
                        );
                      })),
                ),
                SizedBox(
            child: Container(
              width: Dimensions.text_field_width,
              height: Dimensions.height40 * 1.5,
        
              // ignore: prefer_const_constructors
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                color: Color(0xFF747985),
              ),
              child: Row(children: [
                Image.network('https://upload.wikimedia.org/wikipedia/commons/2/27/Street_-_Cixqo_Song_Art_Cover.jpg'),
                SizedBox(
                  width: Dimensions.width10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BigText(
                      text: 'After Hours',
                      size: Dimensions.font20,
                    ),
                    BigText(text: 'Weekend', size: Dimensions.font15),
                  ],
                ),
                SizedBox(
                  width: Dimensions.width40 * 2.7,
                ),
                Icon(
                  Icons.heart_broken,
                  color: Colors.pink,
                  size: Dimensions.iconSize24 * 1.2,
                ),
                Icon(Icons.pause,
                    color: AppColors.white, size: Dimensions.iconSize24 * 1.2)
              ]),
            ),
          )
            ],
          ),
        ),
      ),
    );
  }
}