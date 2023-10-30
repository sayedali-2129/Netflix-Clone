import 'package:flutter/material.dart';
import 'package:flutter_class_13_10/utils/colour_const/color_cont.dart';
import 'package:flutter_class_13_10/view/more_screen/socialmediaCard.dart';

class ShareContainer extends StatelessWidget {
  const ShareContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 247,
      color: ColorConstant.barDarkGrey,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Heading
            Row(
              children: [
                Icon(
                  Icons.message,
                  color: ColorConstant.mainTextColor,
                  size: 24,
                ),
                SizedBox(width: 5),
                Text(
                  "Tell friends about Netflix",
                  style: TextStyle(
                      color: ColorConstant.mainTextColor,
                      fontSize: 19.63,
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
            SizedBox(height: 5),
            // Discription
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,",
              style: TextStyle(
                  color: ColorConstant.mainTextColor,
                  fontSize: 10.78,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 10),
            Text(
              "Terms & Conditions",
              style: TextStyle(
                  color: ColorConstant.buttenGrey,
                  decoration: TextDecoration.underline,
                  fontSize: 10.78),
            ),
            SizedBox(height: 10),
            // Link Container
            Row(
              children: [
                Container(
                  width: 247,
                  height: 37,
                  color: ColorConstant.primaryBlack,
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 37,
                  width: 96,
                  decoration: BoxDecoration(
                      color: ColorConstant.mainTextColor,
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Text(
                      "Copy Link",
                      style: TextStyle(
                          color: ColorConstant.primaryBlack,
                          fontSize: 17.05,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            // SocialMediaLogo
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: SocialMediaLogo(),
            ),
          ],
        ),
      ),
    );
  }
}
