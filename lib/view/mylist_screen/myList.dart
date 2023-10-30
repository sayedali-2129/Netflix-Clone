import 'package:flutter/material.dart';

import 'package:flutter_class_13_10/utils/colour_const/color_cont.dart';
import 'package:flutter_class_13_10/utils/image_const/image_const.dart';

class MyListScreen extends StatelessWidget {
  const MyListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryBlack,
      appBar: AppBar(
        backgroundColor: ColorConstant.primaryBlack,
        leading: Image.asset(ImageConstant.Nlogo),
        title: Text(
          "My List",
          style: TextStyle(color: ColorConstant.mainTextColor, fontSize: 17.19),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: GridView.builder(
          itemCount: ImageConstant.myListImages.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              mainAxisExtent: 171),
          itemBuilder: (context, index) => Container(
            width: 110,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                    image: AssetImage(ImageConstant.myListImages[index]),
                    fit: BoxFit.cover)),
          ),
        ),
      ),
    );
  }
}
