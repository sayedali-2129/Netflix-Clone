import 'package:flutter/material.dart';
import 'package:flutter_class_13_10/database/profile_List/profile_list.dart';
import 'package:flutter_class_13_10/utils/colour_const/color_cont.dart';
import 'package:flutter_class_13_10/utils/image_const/image_const.dart';

import 'package:flutter_class_13_10/view/username_screen/username_card_screen.dart';

class UsernameScreen extends StatelessWidget {
  const UsernameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.primaryBlack,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: ColorConstant.primaryBlack,
          title: Container(
            width: 138,
            height: 37.2,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(ImageConstant.netflixlogo))),
          ),
          centerTitle: true,
          actions: [
            InkWell(
              onTap: () {},
              child: Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(ImageConstant.pencilIcon),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 25,
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(80),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 2,
              crossAxisSpacing: 2,
              mainAxisExtent: 130,
            ),
            itemCount: ProfileList.nameList.length + 1,
            itemBuilder: (context, index) => index ==
                    ProfileList.nameList.length
                ? InkWell(
                    onTap: () {},
                    child: Column(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(ImageConstant.plusIcon),
                            ),
                          ),
                        ),
                        Text(
                          "Add",
                          style: TextStyle(color: ColorConstant.mainTextColor),
                        )
                      ],
                    ),
                  )
                : ScreenUsernameCard(index: index),
          ),
        ),
      ),
    );
  }
}
