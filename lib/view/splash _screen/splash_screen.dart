import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_class_13_10/utils/colour_const/color_cont.dart';

import 'package:flutter_class_13_10/utils/image_const/image_const.dart';
import 'package:flutter_class_13_10/view/username_screen/username_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => UsernameScreen(),
          ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(1, 0, 0, 0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 207,
              height: 55.79,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(ImageConstant.netflixlogo),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CircularProgressIndicator(
              color: ColorConstant.logoRedColor,
            )
          ],
        ),
      ),
    );
  }
}
