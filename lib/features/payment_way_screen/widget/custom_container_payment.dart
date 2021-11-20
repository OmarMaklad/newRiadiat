import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riadiat/constants/my_color.dart';

Widget customContainerPayment({
  Widget? radio,
  Widget? name,
  Color? color,
}) {
  return Container(
    width: 106.0.w,
    height: 35.0.h,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(3.0.r),
      border: Border.all(color: color!),
    ),
    child: Row(
      children: [
        radio!,
        name!,
      ],
    ),
  );
}
