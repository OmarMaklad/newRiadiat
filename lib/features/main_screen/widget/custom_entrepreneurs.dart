import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riadiat/constants/my_color.dart';

Widget customEntrepeneurs({BuildContext? context}) {
  return Container(
    height: 160.h,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(right: 17.w, left: 3.w),
          child: Container(
            width: 110.w,
            height: 150.h,
            decoration: BoxDecoration(
              color: MyColors.bgentrePreneurs,
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
                  Text(
                    'نهال احمد',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'رائدات اعمال فى مجال',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: MyColors.favoriteColors,
                      fontSize: 10.0.sp,
                    ),
                  ),
                  Text(
                    'تصميم الازياء',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: MyColors.favoriteColors,
                      fontSize: 10.0.sp,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    ),
  );
}
