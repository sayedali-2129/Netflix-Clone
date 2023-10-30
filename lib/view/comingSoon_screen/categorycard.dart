import 'package:flutter/material.dart';
import 'package:flutter_class_13_10/database/profile_list/comingSoonMovies/comingSoonmovies.dart';

import 'package:flutter_class_13_10/utils/colour_const/color_cont.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 20,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: ComingSoonMovies.movieCategoryList.length,
          separatorBuilder: (context, index) => Row(
            children: [
              SizedBox(width: 5),
              CircleAvatar(
                radius: 2,
                backgroundColor: ColorConstant.mainTextColor,
              ),
              SizedBox(width: 5)
            ],
          ),
          itemBuilder: (context, index) => Row(
            children: [
              Text(
                ComingSoonMovies.movieCategoryList[index],
                style: TextStyle(
                    color: ColorConstant.mainTextColor,
                    fontSize: 13.5,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
      ),
    );
  }
}
