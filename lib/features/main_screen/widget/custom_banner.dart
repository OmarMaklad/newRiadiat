import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riadiat/constants/my_color.dart';
import 'package:riadiat/constants/strings.dart';

Widget customBanner(BuildContext context) {
  return Container(
    width: double.infinity,
    height: 170.h,
    color: MyColors.meanColor,
    child: Padding(
      padding: EdgeInsets.only(right: 20.0.w),
      child: Row(
        children: [
          Image(
            width: 120.w,
            height: 100.h,
            image: AssetImage("assets/images/2.jpg"),
          ),
          SizedBox(
            width: 30.w,
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.0.h),
            child:   Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'الاكاديميه',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'تعلمى كل مايخص رياده الاعمال',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.sp,
                  ),
                ),
                SizedBox(
                  height: 10.w,
                ),
                customButtonSubscribe(context: context),
                SizedBox(
                  height: 3.w,
                ),
                Text(
                  'عرض كل الدورات',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    ),
  );
}

Widget customButtonSubscribe({BuildContext? context}) {
  return GestureDetector(
    onTap: () {
       Navigator.pushNamed(context!, subscribeAcademy);
    },
    child: Container(
      width: 110.w,
      height: 33.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0.r),
        color: Colors.white,
      ),
      child: Center(
        child: Text(
          'اشتركى الان',
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: MyColors.meanColor,
          ),
        ),
      ),
    ),
  );
}
