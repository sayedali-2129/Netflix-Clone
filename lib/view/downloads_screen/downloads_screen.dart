import 'package:flutter/material.dart';
import 'package:flutter_class_13_10/utils/colour_const/color_cont.dart';

class ScreenDownloads extends StatelessWidget {
  const ScreenDownloads({super.key});

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyleHeading = TextStyle(
        color: ColorConstant.mainTextColor,
        fontWeight: FontWeight.w700,
        fontSize: 19.63);
    final TextStyle textStyleContent = TextStyle(
        color: ColorConstant.mainTextColor,
        fontSize: 10.78,
        fontWeight: FontWeight.w400,
        height: 1.8);

    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.primaryBlack,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 36, top: 10),
              child: Text(
                "Smart Downloads",
                style: TextStyle(
                    color: ColorConstant.mainTextColor,
                    fontSize: 14.72,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 21,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                "Indroducing Download for you",
                style: textStyleHeading,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,id ut ipsum aliquam enim non posuere pulvinar diam.",
                style: textStyleContent,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 177,
              width: double.infinity,
              child: CircleAvatar(
                radius: 88.5,
                backgroundColor: ColorConstant.containerGrey,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {},
              child: Center(
                child: Container(
                  height: 40.89,
                  width: 353,
                  decoration: BoxDecoration(
                      color: ColorConstant.buttonBlue,
                      borderRadius: BorderRadius.circular(2)),
                  child: Center(
                    child: Text(
                      "SETUP",
                      style: TextStyle(
                          fontSize: 13.85,
                          fontWeight: FontWeight.w400,
                          color: ColorConstant.mainTextColor),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 49.11,
            ),
            InkWell(
              onTap: () {},
              child: Center(
                child: Container(
                  height: 33,
                  width: 239,
                  decoration: BoxDecoration(
                      color: ColorConstant.containerGrey,
                      borderRadius: BorderRadius.circular(2)),
                  child: Center(
                    child: Text(
                      "Find Something to Download",
                      style: TextStyle(
                          fontSize: 13.85,
                          fontWeight: FontWeight.w700,
                          color: ColorConstant.mainTextColor,
                          letterSpacing: 0.5),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
