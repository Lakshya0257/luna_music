import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luna/app/modules/homepage/controller/homepage_controller.dart';
import 'package:luna/app/modules/playlist/playlist.dart';

import '../../../../utils/colors.dart';
import '../../../../utils/dimensions.dart';
import '../../../../widgets/big_text.dart';
import '../../../../widgets/button.dart';

class Profile extends GetView<HomePageController> {
  static const route='/profile';
  static launch()=>Get.toNamed(route);
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
      children: [
        Expanded(
          flex: 2,
          child: Column(
            children: [
              Center(
                child: CircleAvatar(
                  radius: Dimensions.radius30 * 1.5,
                  backgroundImage: NetworkImage(
                      'https://blog.readyplayer.me/content/images/2021/04/IMG_0689.PNG'),
                ),
              ),
              SizedBox(
                height: Dimensions.height10 / 2,
              ),
              BigText(
                text: 'Aditya Singh',
                fontWeight: FontWeight.w500,
              ),
              SizedBox(
                height: Dimensions.height10,
              ),
              Button(
                on_pressed: () {},
                text: 'Edit Profile',
                textSize: Dimensions.font15 * 1.2,
                width: Dimensions.width40 * 3.2,
                height: Dimensions.height40 * 0.8,
                color: AppColors.dimWhite,
                textColor: AppColors.black,
              ),
            ],
          ),
        ),
        Expanded(
          flex: 5,
          child: Column(
            children: [
              SizedBox(
                height: Dimensions.height15,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: BigText(
                  text: 'Your Playlists ',
                  fontWeight: FontWeight.w500,
                  size: Dimensions.font26 * 0.9,
                  color: AppColors.dimWhite,
                ),
              ),
              SizedBox(
                height: Dimensions.height20,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: Dimensions.radius30 * 1.1,
                              backgroundColor: AppColors.dimWhite,
                            ),
                            SizedBox(
                              width: Dimensions.width30,
                            ),
                            TextButton(
                              onPressed: () {
                                PlaylistPage.launch();
                                // Navigator.of(context).push(MaterialPageRoute(
                                //     builder: (context) => PlaylistPage()));
                              },
                              child: BigText(
                                text: 'My Playlist#1',
                                color: AppColors.dimWhite,
                              ),
                            )
                          ],
                        ),
                      );
                    })),
              )
            ],
          ),
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
    )
  
    );
  }
}