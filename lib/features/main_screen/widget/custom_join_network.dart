import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riadiat/constants/my_color.dart';
import 'package:riadiat/features/widgets/custom_button_mean_color.dart';

Widget customJoinNetwork({BuildContext? context}) {
  return Container(
    width: 320.w,
    height: 150.h,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5.0.r),
      color: MyColors.bgentrePreneurs,
    ),
    child: Padding(
      padding: EdgeInsets.only(top: 20.0.h, right: 20.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "اكملى بياناتك لتكونى جزء من الشبكه",
            style: TextStyle(fontSize: 17.0.sp),
          ),
          SizedBox(
            height: 15.0.h,
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 12.0.r,
                backgroundImage: NetworkImage(
                    'https://www.cibeg.com/-/media/project/cib/text-and-images/personal/ways-to-bank/online-banking/text-and-image---ways-to-bank---online-banking---day-to-day-banking-transactions.jpg'),
              ),
              SizedBox(
                width: 5.0.w,
              ),
              Text(
                "صفحتك مكتمله بنسبه",
                style: TextStyle(fontSize: 14.0.sp),
              ),
              SizedBox(
                width: 5.0.w,
              ),
              Text(
                "75%",
                style: TextStyle(fontSize: 14.0.sp, color: MyColors.meanColor),
              ),
            ],
          ),
          SizedBox(
            height: 15.0.h,
          ),
          customButtonMeanColor(
              context: context,
              title: "انضمى للشبكه",
              onTap: () {
                print('join network');
              }),
        ],
      ),
    ),
  );
}
