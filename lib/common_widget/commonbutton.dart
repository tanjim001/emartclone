import 'package:emart/consts/consts.dart';
import 'package:flutter/material.dart';

Widget homeButton(double height, double width, String title, icon, onpress) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(
        icon,
        width: 26,
      ),
      5.heightBox,
      title.text.fontFamily(semibold).color(darkFontGrey).make()
    ],
  ).box.rounded.white.shadowSm.size(width, height).make();
}
