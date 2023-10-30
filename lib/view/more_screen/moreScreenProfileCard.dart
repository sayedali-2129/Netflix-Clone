import 'package:flutter/material.dart';
import 'package:flutter_class_13_10/database/profile_list/profile_list.dart';
import 'package:flutter_class_13_10/utils/colour_const/color_cont.dart';

class MoreScreenProfileCard extends StatelessWidget {
  const MoreScreenProfileCard({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () {},
        child: Column(
          children: [
            Image.asset(
              ProfileList.nameList[index]["profile_image"],
              width: 65,
              height: 60,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              ProfileList.nameList[index]["name"],
              style: TextStyle(
                  color: ColorConstant.mainTextColor, fontSize: 12.35),
            ),
          ],
        ),
      ),
    );
  }
}
