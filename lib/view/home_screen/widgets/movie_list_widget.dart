import 'package:flutter/material.dart';
import 'package:flutter_class_13_10/utils/colour_const/color_cont.dart';

class MovieListWidget extends StatelessWidget {
  const MovieListWidget(
      {super.key,
      required this.title,
      required this.imageList,
      this.heightMainContainer = 177,
      this.heightItemContainer = 161,
      this.widthItemContainer = 110,
      this.shape = BoxShape.rectangle,
      required this.borderRadius});
  final String title;
  final List<String> imageList;
  final double heightMainContainer;
  final double heightItemContainer;
  final double widthItemContainer;
  final BoxShape shape;
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            title,
            style: TextStyle(
                color: ColorConstant.mainTextColor,
                fontSize: 26.75,
                fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          height: heightMainContainer,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: imageList.length,
            itemBuilder: (context, index) => title == "Continue watching"
                ? Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      height: heightItemContainer,
                      width: widthItemContainer,
                      decoration: BoxDecoration(
                        shape: shape,
                        borderRadius: borderRadius,
                        image: DecorationImage(
                            image: AssetImage(imageList[index]),
                            fit: BoxFit.cover),
                      ),
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      height: heightItemContainer,
                      width: widthItemContainer,
                      decoration: BoxDecoration(
                        shape: shape,
                        borderRadius: borderRadius,
                        image: DecorationImage(
                            image: AssetImage(imageList[index]),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
          ),
        ),
      ],
    );
  }
}
