import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riadiat/constants/my_color.dart';




Widget customMyTraining(BuildContext context) {
  return Container(
    height: 150.h,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(right: 15.w, left: 5.w),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: MyColors.borderInputColor,
                  borderRadius: BorderRadius.circular(5.0.r),
                ),
                width: 200.w,
                height: 150.h,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5.0.r),
                  child: Image(
                    width: 200.w,
                    height: 150.h,
                    fit: BoxFit.fill,
                    image: NetworkImage(
                      'https://images.unsplash.com/photo-1611095566888-f1446042c8fc?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80',
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 5.h,
                right: 3.w,
                child: Row(
                  children: [
                    Text(
                      'العمل ودراسه الجدوى الماليه خطه',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13.0.sp,
                      ),
                    ),
                    SizedBox(
                      width: 5.0.w,
                    ),
                    Icon(
                      Icons.play_circle_outline,
                      size: 40,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    ),
  );
}
