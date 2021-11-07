import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riadiat/constants/my_color.dart';

Widget customOrContainer({
  BuildContext? context,
}) {
  return Row(
    children: [
      Container(
        width: 138.0.w,
        height: 1,
        color: Colors.black26,
      ),
      SizedBox(
        width: 15.0.w,
      ),
      Text(
        'أو',
        style: TextStyle(
          fontSize: 15.0.sp,
          color: Colors.black26,
        ),
      ),
      SizedBox(
        width: 15.0.w,
      ),
      Container(
        width: 138.w,
        height: 1,
        color: Colors.black26,
      ),
    ],
  );
}
