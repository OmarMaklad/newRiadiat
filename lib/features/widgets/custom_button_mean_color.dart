import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riadiat/constants/my_color.dart';

Widget customButtonMeanColor({
  BuildContext? context,
  String? title,
  Function()? onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: 115.w,
      height: 32.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0.r),
        color: MyColors.meanColor,
      ),
      child: Center(
        child: Text(
          title!,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    ),
  );
}
