import 'package:flutter/material.dart';
import 'package:flutter_class_13_10/database/profile_list/comingSoonMovies/comingSoonmovies.dart';
import 'package:flutter_class_13_10/utils/colour_const/color_cont.dart';
import 'package:flutter_class_13_10/utils/image_const/image_const.dart';
import 'package:flutter_class_13_10/view/comingSoon_screen/comingSoonCard.dart';
import 'package:flutter_class_13_10/view/comingSoon_screen/notificationCard.dart';

class ScreenComingSoon extends StatelessWidget {
  const ScreenComingSoon({super.key});

  @override
  Widget build(BuildContext context) {
    final SizedBox kHeight = SizedBox(height: 20);

    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.primaryBlack,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 9.5,
                      backgroundColor:
                          ColorConstant.notificationBackgroundOrange,
                      child: Icon(
                        Icons.notifications,
                        color: ColorConstant.mainTextColor,
                        size: 14,
                      ),
                    ),
                  ),
                  Text(
                    "Notifications",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: ColorConstant.mainTextColor,
                        fontSize: 16.9),
                  ),
                ],
              ),
              kHeight,
              Notifications(),
              kHeight,
              ComingSoonCard(
                imageList: ImageConstant.comingSoonMoviesImages,
                movienameList: ComingSoonMovies.comingSonnMoviesName,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
