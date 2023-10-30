import 'package:flutter/material.dart';
import 'package:flutter_class_13_10/utils/colour_const/color_cont.dart';
import 'package:flutter_class_13_10/utils/image_const/image_const.dart';
import 'package:flutter_class_13_10/view/movies_screen/movies_screen.dart';
import 'package:flutter_class_13_10/view/mylist_screen/myList.dart';
import 'package:flutter_class_13_10/view/tv_shows_screen/tv_showsscreen.dart';

class HomeScreenTopView extends StatelessWidget {
  const HomeScreenTopView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //Top bar text style
    TextStyle topBarTextStyle = TextStyle(
      color: ColorConstant.mainTextColor,
      fontSize: 17.19,
    );
    return Column(children: [
      Stack(
        children: [
          Container(
            width: double.infinity,
            height: 415,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(ImageConstant.homeBackground),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            height: 415,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                ColorConstant.primaryBlack.withOpacity(.50),
                ColorConstant.primaryBlack.withOpacity(.1)
              ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
            ),
          ),
          //Tab Bar
          Row(
            children: [
              Container(
                width: 53,
                height: 57,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.Nlogo))),
              ),
              SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ScreenTvShows(),
                      ));
                },
                child: Text(
                  "TV Shows",
                  style: topBarTextStyle,
                ),
              ),
              SizedBox(
                width: 50,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ScreenMovies(),
                      ));
                },
                child: Text(
                  "Movies",
                  style: topBarTextStyle,
                ),
              ),
              SizedBox(
                width: 50,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyListScreen(),
                    ),
                  );
                },
                child: Text(
                  "My List",
                  style: topBarTextStyle,
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: ColorConstant.mainTextColor, width: 2)),
                    ),
                    Center(
                      child: Column(
                        children: [
                          Text(
                            "TOP",
                            style: TextStyle(
                                fontWeight: FontWeight.w800,
                                color: ColorConstant.mainTextColor,
                                fontSize: 4.36),
                          ),
                          Text(
                            "10",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                color: ColorConstant.mainTextColor,
                                fontSize: 6.86),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "#2 in Nigeria Today",
                  style: TextStyle(
                      fontSize: 13.72,
                      fontWeight: FontWeight.bold,
                      color: ColorConstant.mainTextColor),
                )
              ],
            ),
          )
        ],
      ),
      SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: () {},
            child: Column(
              children: [
                Icon(
                  Icons.add,
                  color: ColorConstant.mainTextColor,
                  size: 26,
                ),
                Text(
                  "My List",
                  style: TextStyle(
                      color: ColorConstant.mainTextColor, fontSize: 13.6),
                ),
              ],
            ),
          ),
          InkWell(
              onTap: () {},
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 45,
                    width: 110.6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: ColorConstant.buttenGrey,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.play_arrow,
                        size: 35,
                      ),
                      Text(
                        "Play",
                        style: TextStyle(
                            fontSize: 20.46, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              )),
          InkWell(
            onTap: () {},
            child: Column(
              children: [
                Icon(
                  Icons.info_outline,
                  size: 26,
                  color: ColorConstant.mainTextColor,
                ),
                Text(
                  "Info",
                  style: TextStyle(
                      color: ColorConstant.mainTextColor, fontSize: 13.6),
                ),
              ],
            ),
          ),
        ],
      )
    ]);
  }
}
