import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riadiat/constants/my_color.dart';
import 'package:riadiat/features/widgets/custom_button_mean_color.dart';

Widget customNoResult({
  BuildContext? context,
}) {
  return Center(
    child: Container(
      height: 140.h,
      child: Column(
        children: [
          Text(
            "لا يوجد نتائج",
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'تاكدى من كتابه بصيغه صحيحه او جربى البحث بصيغه اخرى',
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black26,
            ),
          ),
          SizedBox(
            height: 12.0.h,
          ),
          customButtonMeanColor(
            context: context,
            title: "عرض جميع الدورات",
            onTap: () {
              print("show all training");
            },
          ),
          SizedBox(
            height: 5.0.h,
          ),
          GestureDetector(
            onTap: () {
              print('show entreprenuse');
            },
            child: Text(
              "عرض جميع رائدات الاعمال",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: MyColors.meanColor
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
