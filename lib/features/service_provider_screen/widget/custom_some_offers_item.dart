import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riadiat/constants/my_color.dart';
import 'package:riadiat/features/service_provider_screen/widget/custom_text.dart';
import 'package:riadiat/features/service_provider_screen/widget/cutom_bottom.dart';


Widget customSomeOffersItem({BuildContext? context}) {
  return Padding(
    padding: EdgeInsets.only(right: 17.w, left: 3.w),
    child: Container(
      width: 180.w,
      height: 200.h,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(6),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 15.0.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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
                text: 'تسويق الكتروني',
                color: MyColors.black,
                fontSize: 12.sp,
                fontWeight: FontWeight.bold),
            customText(
                text: 'نور الله احمد',
                color: MyColors.black,
                fontSize: 10.sp,
                fontWeight: FontWeight.bold),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.watch_later_outlined,
                  size: 20,
                ),
                const SizedBox(
                  width: 10,
                ),
                customText(
                    text: 'منذ 12 دقيقه',
                    color: MyColors.black,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.bold),
              ],
            ),
            customText(
                text: 'لها شركات ناجحه ف المملكه وخارجها',
                color: MyColors.black,
                fontSize: 10.sp,
                fontWeight: FontWeight.bold),
            customBottom(
                onTap: () => print('go to subscribe '),
                text:  'ضيفي عرضك',
              backGroundColor: MyColors.meanColor,
              textColor: MyColors.white,
            ),
          ],
        ),
      ),
    ),
  );
}
