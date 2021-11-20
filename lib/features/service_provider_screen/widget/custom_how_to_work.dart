import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riadiat/constants/my_color.dart';

import 'custom_text.dart';

Widget customHowToWorkItem({
  required int index,
}) {
  return Container(
    color: index == 0 || index == 3 ? Colors.grey[200] : MyColors.meanColor,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://www.cibeg.com/-/media/project/cib/text-and-images/personal/ways-to-bank/online-banking/text-and-image---ways-to-bank---online-banking---day-to-day-banking-transactions.jpg'),
                fit: BoxFit.fill),
          ),
          height: 65.h,
          width: 90.w,
        ),
        customText(
          text: 'ابحني عن مقدمه خدمه',
          color: index == 0 || index == 3 ? MyColors.meanColor : MyColors.white,
          fontSize: 14.0.sp,
          fontWeight: FontWeight.bold,
        )
      ],
    ),
  );
}
