import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riadiat/constants/my_color.dart';

Widget customRowGirdView({
  BuildContext? context,
  Color? color1,
  Color? color2,
  String? title1,
  String? title2,
  Function()? onTap1,
  Function()? onTap2,
  String? name1,
  String? name2,
  String? desc1,
  String? desc2,
  Color? colors1,
  Color? colors2,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      customGirdView(
        context: context,
        color: color1,
        onTap: onTap1,
        title: title1,
        name: name1,
        desc: desc1,
        colors: color1,
      ),
      SizedBox(
        width: 20.w,
      ),
      customGirdView(
        context: context,
        color: color2,
        onTap: onTap2,
        title: title2,
        name: name2,
        desc: desc2,
        colors: color2,
      ),
    ],
  );
}

Widget customGirdView({
  BuildContext? context,
  Color? color,
  String? title,
  Function()? onTap,
  String? name,
  String? desc,
  Color? colors,
}) {
  return Container(
    width: 160.w,
    height: 130.h,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(10.0.r),
    ),
    child: Padding(
      padding: EdgeInsets.only(top: 8.0.w),
      child: Column(
        children: [
          Icon(
            Icons.play_circle_outline,
            color: Colors.white,
            size: 40,
          ),
          SizedBox(
            height: 4.0.h,
          ),
          Text(
            name!,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            desc!,
            style: TextStyle(
              color: Colors.white,
              fontSize: 10.sp,
            ),
          ),
          SizedBox(
            height: 8.0.h,
          ),
          customButtonGird(
            context: context,
            onTap: onTap,
            title: title,
            colors: colors,
          ),
        ],
      ),
    ),
  );
}

Widget customButtonGird(
    {BuildContext? context, Function()? onTap, String? title, Color? colors}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: 100.w,
      height: 25.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0.r),
        color: Colors.white,
      ),
      child: Center(
        child: Text(
          title!,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: colors,
          ),
        ),
      ),
    ),
  );
}
