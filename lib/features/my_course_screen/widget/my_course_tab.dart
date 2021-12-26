import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riadiat/constants/my_color.dart';
import 'package:riadiat/constants/strings.dart';

Widget courseTab({BuildContext? context}) {
  return ListView.builder(
    itemCount: 10,
    itemBuilder: (context, index) {
      return Padding(
        padding: EdgeInsets.only(bottom: 20.0.h),
        child: Center(
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context,  videoDetailScreen);
            },
            child: Stack(
              children: [
                GestureDetector(
                  onTap: () {
                    print('open video');
                  },
                  child: Container(
                    width: 325.w,
                    height: 180.w,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(5.0.r),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5.0.r),
                      child: Image(
                        width: 325.w,
                        height: 180.0.h,
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            'https://images.unsplash.com/photo-1611095566888-f1446042c8fc?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80'),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 60.0.h,
                  right: 150.w,
                  child: Icon(
                    Icons.play_circle_outline,
                    size: 50.0,
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  bottom: 5.0.w,
                  child: customRowText(context: context),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}

Widget customRowText({BuildContext? context}) {
  return Padding(
    padding: EdgeInsets.only(right: 10.0.w, left: 10.0.w),
    child: Row(
      children: [
        Text(
          'خطه العمل ودراسه الجدول الماليه',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15.sp,
          ),
        ),
        SizedBox(
          width: 50.0.w,
        ),
        Text(
          'تابعى الدوره',
          style: TextStyle(
            color: MyColors.meanColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}
