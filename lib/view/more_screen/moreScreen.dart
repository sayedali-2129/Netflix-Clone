import 'package:flutter/material.dart';
import 'package:flutter_class_13_10/database/profile_list/profile_list.dart';
import 'package:flutter_class_13_10/utils/colour_const/color_cont.dart';
import 'package:flutter_class_13_10/utils/image_const/image_const.dart';
import 'package:flutter_class_13_10/view/more_screen/moreScreenProfileCard.dart';
import 'package:flutter_class_13_10/view/more_screen/shareContainer.dart';
import 'package:flutter_class_13_10/view/mylist_screen/myList.dart';
import 'package:flutter_class_13_10/view/username_screen/username_screen.dart';

class ScreenMore extends StatelessWidget {
  const ScreenMore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryBlack,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: ProfileList.nameList.length + 1,
                itemBuilder: (context, index) => index ==
                        ProfileList.nameList.length
                    ? Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 65,
                                height: 60,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                    scale: 1.5,
                                    image: AssetImage(ImageConstant.plusIcon),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Add",
                                style: TextStyle(
                                    color: ColorConstant.mainTextColor,
                                    fontSize: 12.35),
                              )
                            ],
                          ),
                        ],
                      )
                    : Row(
                        children: [
                          MoreScreenProfileCard(
                            index: index,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.edit,
                  color: ColorConstant.buttenGrey,
                  size: 14,
                ),
                Text(
                  "Manage Profiles",
                  style: TextStyle(
                      color: ColorConstant.buttenGrey, fontSize: 14.72),
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          ShareContainer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyListScreen(),
                    ));
              },
              child: Row(
                children: [
                  Icon(Icons.done_outline, color: ColorConstant.mainTextColor),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "My List",
                    style: TextStyle(
                        fontSize: 14.72,
                        color: ColorConstant.mainTextColor,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.white,
            thickness: 0.5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "App Settings",
                  style: TextStyle(
                      fontSize: 14.72,
                      fontWeight: FontWeight.w500,
                      color: ColorConstant.mainTextColor),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Account",
                  style: TextStyle(
                      fontSize: 14.72,
                      fontWeight: FontWeight.w500,
                      color: ColorConstant.mainTextColor),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Help",
                  style: TextStyle(
                      fontSize: 14.72,
                      fontWeight: FontWeight.w500,
                      color: ColorConstant.mainTextColor),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => UsernameScreen()),
                        (route) => false);
                  },
                  child: Text(
                    "Sign out",
                    style: TextStyle(
                        fontSize: 14.72,
                        fontWeight: FontWeight.w500,
                        color: ColorConstant.mainTextColor),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
