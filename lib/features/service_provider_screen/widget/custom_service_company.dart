import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riadiat/constants/my_color.dart';
import 'package:riadiat/features/service_provider_screen/widget/custom_text.dart';

Widget customServiceCompanyItem({BuildContext? context}) {
  return Container(
    height: 160.h,
    width: 120.w,
    child: Padding(
      padding: EdgeInsets.only(right: 17.w, left: 3.w),
      child: Container(
        width: 110.w,
        height: 150.h,
        decoration: BoxDecoration(
          color: Colors.grey[200],
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 15.0.h),
          child: Column(
            children: [
              CircleAvatar(
                radius: 35.r,
                backgroundImage: NetworkImage(
                    'https://www.cibeg.com/-/media/project/cib/text-and-images/personal/ways-to-bank/online-banking/text-and-image---ways-to-bank---online-banking---day-to-day-banking-transactions.jpg'),
              ),
              SizedBox(
                height: 10.0.h,
              ),
              customText(
                  text: 'اسم الشركه',
                  color: MyColors.black,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold),
              customText(
                  text: 'تجميل',
                  color: MyColors.black,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold),
            ],
          ),
        ),
      ),
    ),
  );
}
