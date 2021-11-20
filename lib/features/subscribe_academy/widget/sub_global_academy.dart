import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riadiat/constants/my_color.dart';
import 'package:riadiat/constants/strings.dart';
import 'package:riadiat/features/subscribe_academy/widget/custom_all_subscribation.dart';

Widget customGlobalAcademy({BuildContext? context}) {
  return SingleChildScrollView(
    child: Container(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0.w),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Text(
                'احصلى على دورات مفتوحه شهرى او سنوىوتعلمى احدى التخصصات الرياديه التالبه',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 10.0.sp,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Text(
                '(الازياء-المجواهرت-التصميم الداخلى-التقنيه-التجاره الالكترونيه)',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 10.0.sp,
                ),
              ),
            ),
            SizedBox(
              height: 20.0.h,
            ),
            SizedBox(
              child: customContainerWithShadow(
                context: context,
                color: MyColors.meanColor,
                child: customColumn(
                  context: context,
                  title: 'اشتراك شهرى',
                  description1: 'الدوره متاحه مدى الحياه',
                  description: 'احصلى على 4 دورات مفتوحه كل شهر',
                  description2: 'شهاده اتمام الدوره',
                  description3: 'غرفه محادثه مخصصه لكل دوره',
                  onTap: () {
                    Navigator.pushNamed(context!, paymentWayScreen);
                  },
                ),
              ),
            ),
            SizedBox(
              height: 20.0.h,
            ),
            SizedBox(
              child: customContainerWithShadow(
                context: context,
                color: MyColors.amberColor,
                child: customColumn(
                  context: context,
                  title: 'اشتراك سنوى',
                  description1: 'الدوره متاحه مدى الحياه',
                  description: 'احصلى على 18 دورات مفتوحه كل سنه',
                  description2: 'شهاده اتمام الدوره',
                  description3: 'غرفه محادثه مخصصه لكل دوره',
                  onTap: () {
                    print('subscribe');
                  },
                ),
              ),
            ),
            SizedBox(
              height: 20.0.h,
            ),
          ],
        ),
      ),
    ),
  );
}
