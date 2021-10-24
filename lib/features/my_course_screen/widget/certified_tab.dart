import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:riadiat/features/my_course_screen/widget/custom_button_see_cert.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget certifiedTab({BuildContext? context}) {
  return SingleChildScrollView(
    child: Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 200.w,
                height: 100.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'خطه العمل ودراسه الجدول الماليه',
                      style: TextStyle(
                        fontSize: 15.0.sp,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      'تاريخ الانتهاء 5/7/2021',
                      style: TextStyle(color: Colors.grey),
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 21.0.h,
                    ),
                    Center(
                      child: customButtonSeeCert(context: context),
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  Container(
                    width: 120.w,
                    height: 100.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0..r),
                      color: Colors.green,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5.0.r),
                      child: Image(
                        width: 120,
                        height: 100,
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            'https://images.unsplash.com/photo-1611095566888-f1446042c8fc?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80'),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 35.0.w,
                    right: 45.0.h,
                    child: Icon(
                      Icons.play_circle_outline,
                      size: 40.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 30.0.h,
        ),
        Text(
          'خطه العمل ودراسه الجدول الماليه',
          style: TextStyle(
            fontSize: 15.0.sp,
            fontWeight: FontWeight.bold,
          ),
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          'تاريخ الانتهاء : 5/7/2021 ',
          style: TextStyle(color: Colors.grey),
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          'المراجعه قيد الشهاده',
          style: TextStyle(color: Colors.orange),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    ),
  );
}
