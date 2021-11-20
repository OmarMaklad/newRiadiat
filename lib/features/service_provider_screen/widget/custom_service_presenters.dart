import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riadiat/constants/my_color.dart';

import 'custom_text.dart';

Widget customServicePresenter({
  required String name,
  required String title,
  required Function onTap,
}) {
  return Padding(
    padding: EdgeInsets.only(right: 15.w, left: 5.w),
    child: GestureDetector(
      onTap: () {
        onTap();
      },
      child: Stack(
        children: [
          Container(
            height: 160.h,
            width: 130.w,
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: 118.h,
              width: 130.w,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(6.r),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 30.h,
                  ),
                  customText(
                    text: name,
                    color: MyColors.subscribeContainer,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  customText(
                    text: title,
                    color: Colors.green[900]!,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  RatingBar.builder(
                    itemSize: 15.w,
                    initialRating: 5,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    //  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 5.w,
            left: 5.w,
            child: CircleAvatar(
              radius: 35.r,
              backgroundImage: NetworkImage(
                  'https://www.cibeg.com/-/media/project/cib/text-and-images/personal/ways-to-bank/online-banking/text-and-image---ways-to-bank---online-banking---day-to-day-banking-transactions.jpg'),
            ),
          ),
        ],
      ),
    ),
  );
}
