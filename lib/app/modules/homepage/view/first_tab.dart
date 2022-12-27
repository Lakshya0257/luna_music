import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/dimensions.dart';
import '../../../../widgets/big_text.dart';
import '../controller/homepage_controller.dart';

class FirstTab extends GetView<HomePageController> {
  static const route='/firstTab';
  static launch()=>Get.toNamed(route);
  const FirstTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: 'Recently Played'),
        SizedBox(
          height: Dimensions.height15,
        ),
        SizedBox(
          height: Dimensions.height40*5,
          width: double.maxFinite,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
                          return Padding(padding: index==0? EdgeInsets.fromLTRB(0, 0, 10, 0):EdgeInsets.symmetric(horizontal:10),
                          child:Column(
                            children: [
                              Container(
                            width: Dimensions.height40*4,
                            height: Dimensions.height40*4,
                            decoration: BoxDecoration(
                              color:Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(image: NetworkImage('https://mir-s3-cdn-cf.behance.net/project_modules/1400/fe529a64193929.5aca8500ba9ab.jpg'),fit: BoxFit.fill)
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: BigText(text: 'Liked Songs',size: Dimensions.font15,)
                          )
                            ],
                          )
                          );
                        },
          ),
        )
      ],
    );
  }
}