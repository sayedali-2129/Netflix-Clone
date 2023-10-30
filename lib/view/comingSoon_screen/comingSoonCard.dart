import 'package:flutter/material.dart';

import 'package:flutter_class_13_10/utils/colour_const/color_cont.dart';
import 'package:flutter_class_13_10/view/comingSoon_screen/categorycard.dart';

class ComingSoonCard extends StatelessWidget {
  const ComingSoonCard(
      {super.key, required this.imageList, required this.movienameList});
  final List<String> imageList;
  final List<String> movienameList;

  @override
  Widget build(BuildContext context) {
    TextStyle textStyleContent = TextStyle(
        color: ColorConstant.mainTextColor,
        fontSize: 13.4,
        fontWeight: FontWeight.w400,
        height: 1.5);

    TextStyle textStyleTitle = TextStyle(
        color: ColorConstant.mainTextColor,
        fontSize: 18.66,
        fontWeight: FontWeight.w700);
    return ListView.builder(
      itemCount: imageList.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 195,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(imageList[index]), fit: BoxFit.cover),
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 227,
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications,
                      color: ColorConstant.mainTextColor,
                      size: 24,
                    ),
                  ),
                  Text(
                    "Remind me",
                    style: textStyleContent,
                  ),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.share,
                      color: ColorConstant.mainTextColor,
                    ),
                  ),
                  Text(
                    "Remind me",
                    style: textStyleContent,
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Season 1 Coming December 14",
                style: TextStyle(
                  fontSize: 13,
                  color: ColorConstant.mainTextColor,
                  fontWeight: FontWeight.w400,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              movienameList[index],
              style: textStyleTitle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa, id ut ipsum aliquam enim non posuere pulvinar diam.",
              style: textStyleContent,
            ),
          ),
          CategoryCard(),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
