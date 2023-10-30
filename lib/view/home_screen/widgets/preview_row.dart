import 'package:flutter/material.dart';

import 'package:flutter_class_13_10/utils/colour_const/color_cont.dart';
import 'package:flutter_class_13_10/utils/image_const/image_const.dart';

class Previews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            "Previews",
            style: TextStyle(
                color: ColorConstant.mainTextColor,
                fontSize: 26.75,
                fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 102,
            child: ListView.builder(
              padding: EdgeInsets.all(0),
              itemCount: ImageConstant.imageListPreviews.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => CircleAvatar(
                radius: 55,
                backgroundImage: AssetImage(
                  ImageConstant.imageListPreviews[index],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
