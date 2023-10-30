import 'package:flutter/material.dart';
import 'package:flutter_class_13_10/utils/colour_const/color_cont.dart';
import 'package:flutter_class_13_10/utils/image_const/image_const.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    final SizedBox kWidth = SizedBox(width: 20);
    return ListView.separated(
      separatorBuilder: (context, index) => SizedBox(
        height: 5,
      ),
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: ImageConstant.notificationImages.length,
      itemBuilder: (context, index) => Container(
        height: 65,
        color: ColorConstant.containerGrey,
        child: Row(
          children: [
            Image.asset(
              ImageConstant.notificationImages[index]["image"],
              fit: BoxFit.cover,
            ),
            kWidth,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "New Arrival",
                  style: TextStyle(
                      color: ColorConstant.mainTextColor, fontSize: 13.71),
                ),
                Text(
                  ImageConstant.notificationImages[index]["name"],
                  style: TextStyle(
                      color: ColorConstant.mainTextColor,
                      fontSize: 13.71,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  ImageConstant.notificationImages[index]["date"],
                  style: TextStyle(
                      color: ColorConstant.iconNotSelectedGrey,
                      fontSize: 13.71),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
