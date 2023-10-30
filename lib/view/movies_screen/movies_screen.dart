import 'package:flutter/material.dart';
import 'package:flutter_class_13_10/utils/colour_const/color_cont.dart';
import 'package:flutter_class_13_10/utils/image_const/image_const.dart';
import 'package:flutter_class_13_10/view/home_screen/widgets/movie_list_widget.dart';
import 'package:flutter_class_13_10/view/home_screen/widgets/preview_row.dart';
import 'package:flutter_class_13_10/view/movies_screen/movies_top_view.dart';

class ScreenMovies extends StatelessWidget {
  const ScreenMovies({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.primaryBlack,
        body: ListView(
          children: [
            MoviesTopView(),
            SizedBox(
              height: 30,
            ),
            Previews(),
            MovieListWidget(
                title: "Continue Watching",
                borderRadius: BorderRadius.circular(2),
                imageList: ImageConstant.continueWatchingImages),
            MovieListWidget(
                title: "Popular on Netflix",
                borderRadius: BorderRadius.circular(2),
                imageList: ImageConstant.popularOnNetflix),
            MovieListWidget(
                title: "Trending Now",
                borderRadius: BorderRadius.circular(2),
                imageList: ImageConstant.TrendingNowImages),
            MovieListWidget(
              title: "Netflix Originals",
              imageList: ImageConstant.netflixOriginalsImages,
              borderRadius: BorderRadius.circular(2),
              heightMainContainer: 251,
              heightItemContainer: 251,
              widthItemContainer: 154,
            ),
            MovieListWidget(
                title: "My List",
                borderRadius: BorderRadius.circular(2),
                imageList: ImageConstant.myListImages),
          ],
        ),
      ),
    );
  }
}
