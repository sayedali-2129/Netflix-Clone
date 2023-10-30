import 'package:flutter/material.dart';
import 'package:flutter_class_13_10/utils/colour_const/color_cont.dart';
import 'package:flutter_class_13_10/utils/image_const/image_const.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.primaryBlack,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              style: TextStyle(fontSize: 17, color: ColorConstant.buttenGrey),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search),
                  prefixIconColor: ColorConstant.buttenGrey,
                  suffixIcon:
                      IconButton(onPressed: () {}, icon: Icon(Icons.mic)),
                  suffixIconColor: ColorConstant.buttenGrey,
                  hintText: "Search for a movie, Show, Genre etc",
                  hintStyle: TextStyle(color: ColorConstant.buttenGrey),
                  filled: true,
                  fillColor: ColorConstant.containerGrey),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Top Searches",
                style: TextStyle(
                    fontSize: 26.7,
                    color: ColorConstant.mainTextColor,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(
                  height: 5,
                ),
                itemCount: ImageConstant.searchListImages.length,
                itemBuilder: (context, index) => InkWell(
                  onTap: () {},
                  child: Container(
                    height: 76,
                    color: ColorConstant.containerGrey,
                    child: Row(
                      children: [
                        Image.asset(
                            ImageConstant.searchListImages[index]["image"]),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Text(
                            ImageConstant.searchListImages[index]["movie"],
                            style: TextStyle(
                                color: ColorConstant.mainTextColor,
                                fontSize: 14.72),
                          ),
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        Icon(
                          Icons.play_circle_outline,
                          color: ColorConstant.mainTextColor,
                        ),
                        SizedBox(
                          width: 10,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
