import 'package:flutter/material.dart';
import 'package:riadiat/constants/my_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget customButtonSeeCert({
  BuildContext? context,
}) {
  return GestureDetector(
    onTap: () {
      print('see certified');
    },
    child: Container(
      width: 100.w,
      height: 30.h,
      decoration: BoxDecoration(
        color: MyColors.meanColor,
        borderRadius: BorderRadius.circular(5.0.r),
      ),
      child: Center(
        child: Text(
          'استعراض الشهاده',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    ),
  );
}
