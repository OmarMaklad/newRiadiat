import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riadiat/constants/my_color.dart';

Widget customLargeButton({
  BuildContext? context,
  Function()? onTap,
  String? name,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: 320.w,
      height: 40.0.h,
      decoration: BoxDecoration(
        color: MyColors.meanColor,
        borderRadius: BorderRadius.circular(5.0.r),
      ),
      child: Center(
        child: Text(
          name!,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0.sp,
          ),
        ),
      ),
    ),
  );
}
