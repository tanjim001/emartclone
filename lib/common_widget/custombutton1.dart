import 'package:emart/consts/consts.dart';
import 'package:flutter/material.dart';

Widget cu1Button({onpress, color, textColor, String? title}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      backgroundColor: color,
      padding: const EdgeInsets.all(12),
    ),
    onPressed: onpress,
    child: title!.text.fontFamily(bold).color(textColor).make(),
  );
}
