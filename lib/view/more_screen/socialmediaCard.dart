import 'package:flutter/material.dart';
import 'package:flutter_class_13_10/utils/colour_const/color_cont.dart';
import 'package:flutter_class_13_10/utils/image_const/image_const.dart';

class SocialMediaLogo extends StatelessWidget {
  const SocialMediaLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Container(
            width: 36,
            height: 33.6,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: ColorConstant.whatsappColor,
              image: DecorationImage(
                image: AssetImage(ImageConstant.whatsAppLogo),
              ),
            ),
          ),
          VerticalDivider(
            color: Colors.white,
            width: 56,
            thickness: 0.5,
          ),
          Container(
            width: 36,
            height: 33.6,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: ColorConstant.facebookColor,
              image: DecorationImage(
                image: AssetImage(ImageConstant.facebookLogo),
              ),
            ),
          ),
          VerticalDivider(
            color: Colors.white,
            width: 56,
            thickness: 0.5,
          ),
          Container(
            width: 36,
            height: 33.6,
            decoration: BoxDecoration(
              color: ColorConstant.mainTextColor,
              image: DecorationImage(
                  image: AssetImage(ImageConstant.gmail), fit: BoxFit.cover),
            ),
          ),
          VerticalDivider(
            color: Colors.white,
            width: 56,
            thickness: 0.5,
          ),
          Container(
            width: 36,
            height: 40,
            child: Center(
              child: Column(
                children: [
                  Icon(
                    Icons.more_horiz,
                    color: ColorConstant.mainTextColor,
                  ),
                  Text(
                    "More",
                    style: TextStyle(
                        color: ColorConstant.mainTextColor, fontSize: 13),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
