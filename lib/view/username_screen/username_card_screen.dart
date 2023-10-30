import 'package:flutter/material.dart';
import 'package:flutter_class_13_10/database/profile_List/profile_list.dart';
import 'package:flutter_class_13_10/utils/colour_const/color_cont.dart';
import 'package:flutter_class_13_10/view/bottom_navigation/bottom_navigation.dart';

class ScreenUsernameCard extends StatelessWidget {
  const ScreenUsernameCard({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BottomNavigationWidget(),
            ),
          );
        },
        child: Column(
          children: [
            Image.asset(
              ProfileList.nameList[index]["profile_image"],
              width: 100,
              height: 92,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              ProfileList.nameList[index]["name"],
              style: TextStyle(
                color: ColorConstant.mainTextColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
