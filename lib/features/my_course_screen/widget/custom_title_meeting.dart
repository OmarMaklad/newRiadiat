import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget customTitleMeeting({
  BuildContext? context,
  String? title,
}) {
  return Padding(
    padding: EdgeInsets.only(
      right: 20.0.w,
    ),
    child: Text(
      title!,
      style: TextStyle(
        fontSize: 18.0.sp,
      ),
    ),
  );
}
