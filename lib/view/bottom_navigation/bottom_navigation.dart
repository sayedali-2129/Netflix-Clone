import 'package:flutter/material.dart';
import 'package:flutter_class_13_10/utils/colour_const/color_cont.dart';
import 'package:flutter_class_13_10/view/comingSoon_screen/comingsoonScreen.dart';
import 'package:flutter_class_13_10/view/downloads_screen/downloads_screen.dart';
import 'package:flutter_class_13_10/view/home_screen/home_screen.dart';
import 'package:flutter_class_13_10/view/more_screen/moreScreen.dart';
import 'package:flutter_class_13_10/view/search_screen/search_screen.dart';

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({super.key});

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int currentSelectedIndex = 0;

  final pages = [
    HomeScreen(),
    ScreenSearch(),
    ScreenComingSoon(),
    ScreenDownloads(),
    ScreenMore(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: pages[currentSelectedIndex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentSelectedIndex,
            onTap: (newIndex) {
              setState(() {
                currentSelectedIndex = newIndex;
              });
            },
            type: BottomNavigationBarType.fixed,
            backgroundColor: ColorConstant.barDarkGrey,
            selectedItemColor: ColorConstant.mainTextColor,
            unselectedItemColor: ColorConstant.iconNotSelectedGrey,
            selectedIconTheme:
                IconThemeData(color: ColorConstant.mainTextColor),
            unselectedIconTheme:
                IconThemeData(color: ColorConstant.iconNotSelectedGrey),
            selectedFontSize: 10,
            unselectedFontSize: 10,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: "Search"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.video_library_outlined),
                  label: "Coming Soon"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.download), label: "Downloads"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.more_vert), label: "More"),
            ]),
      ),
    );
  }
}
