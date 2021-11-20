import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riadiat/constants/my_color.dart';

import 'custom_text.dart';
Widget noWorkList(){
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Center(
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 170.h,
            width: 200.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  "assets/images/undraw_Empty_re_opql.png",
                ),
              ),
            ),
          ),
          customText(
            text: 'لا توجد أعمال منشوره بعد',
            color: MyColors.black,
            fontSize: 15.sp,
            fontWeight: FontWeight.bold,
          ),
          customText(
            text: 'لم يتم رفع اي اعمال بعد من قبل المدربه',
            color: MyColors.black,
            fontSize: 15.sp,
          ),
        ],
      ),
    ),
  );
}