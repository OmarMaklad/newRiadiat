import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riadiat/constants/my_color.dart';

Widget customScrollAcademy(BuildContext context) {
  return Container(
    height: 100.h,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(right: 15.w, left: 5.w, bottom: 5.h),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: MyColors.borderInputColor,
                  borderRadius: BorderRadius.circular(5.0.r),
                ),
                width: 110.w,
                height: 80.h,
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
                bottom: -4.h,
                right: 4.0.w,
                child: customButtonAcademy(
                  context: context,
                  title: 'المحاسبه والماليه',
                  onTap: () {
                    print('click to finance');
                  }
                ),
              ),
            ],
          ),
        );
      },
    ),
  );
}

Widget customButtonAcademy({
  BuildContext? context,
  String? title,
  Function()? onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: 100.w,
      height: 25.h,
      decoration: BoxDecoration(
        color: MyColors.meanColor,
        borderRadius: BorderRadius.circular(5.0.r),
      ),
      child: Center(
        child: Text(
          title!,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    ),
  );
}
