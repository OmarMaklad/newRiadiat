import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riadiat/constants/my_color.dart';
import 'package:riadiat/features/service_provider_screen/widget/custom_text.dart';

Widget customFamousServicesListItem({
  required String imagePath,
  required String title,
  required double width,
  required double height,
}) {
  return Padding(
    padding: EdgeInsets.only(right: 15.w, left: 5.w),
    child: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(4.r),
              topLeft: Radius.circular(4.r),
            ),
          ),
          width: width,
          height: height,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(6.r),
              topLeft: Radius.circular(6.r),
            ),
            child: Image(
              fit: BoxFit.fill,
              image: NetworkImage(imagePath),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            decoration: BoxDecoration(
              color: MyColors.meanColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(6.r),
                topLeft: Radius.circular(6.r),
              ),
            ),
            width: 170.w,
            height: 45.h,
            child: Center(
              child: customText(
                text: title,
                color: MyColors.white,
                fontSize: 14.0.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
