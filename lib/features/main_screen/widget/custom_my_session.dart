import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riadiat/constants/my_color.dart';

Widget customMySession(BuildContext context) {
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
                width: 250.w,
                height: 150.h,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5.0.r),
                  child: Image(
                    width: 250.w,
                    height: 150.h,
                    fit: BoxFit.fill,
                    image: NetworkImage(
                      'https://images.unsplash.com/photo-1611095566888-f1446042c8fc?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80',
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 5.0.h,
                right: 10.0.w,
                child: Row(
                  children: [
                    Container(
                      width: 40.w,
                      height: 20.h,
                      decoration: BoxDecoration(
                        color: MyColors.bgRangContainer,
                        borderRadius: BorderRadius.circular(5.0.r),
                      ),
                      child: Center(
                        child: Text(
                          'رائج',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.0.w,
                    ),
                    Container(
                      width: 50.w,
                      height: 20.h,
                      decoration: BoxDecoration(
                        color: MyColors.bgCardServiceColor,
                        borderRadius: BorderRadius.circular(5.0.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.mobile_screen_share,
                            size: 10,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5.0.w,
                          ),
                          Text(
                            'مكه',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 2.0.h,
                right: 10.0.w,
                child: Text(
                  "نسرين السيد",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0.sp,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    ),
  );
}
