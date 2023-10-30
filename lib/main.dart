import 'package:flutter/material.dart';
import 'package:flutter_class_13_10/view/splash%20_screen/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Netflix",
        home: SplashScreen());
  }
}
