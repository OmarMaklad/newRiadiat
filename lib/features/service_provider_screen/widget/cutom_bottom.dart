import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riadiat/constants/my_color.dart';

import 'custom_text.dart';
Widget customBottom({
  required Color backGroundColor,
  required Color textColor,
  required Function onTap,
  required String text,
}) {
  return Container(
    height: 32.h,
    width: 102.w,
    decoration: BoxDecoration(
        color: backGroundColor,
        borderRadius: BorderRadius.circular(4.0),
        border: Border.all(width: 1.0, color: MyColors.meanColor)),
    child: GestureDetector(
      onTap: (){
        onTap();
      },
      child: Center(
        child: customText(
          text: text,
          color: textColor,
          fontSize: 13.0.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}