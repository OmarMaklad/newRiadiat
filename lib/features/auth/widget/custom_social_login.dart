import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riadiat/constants/my_color.dart';

Widget customSocialLogin({BuildContext? context}) {
  return Container(
    width: 320.w,
    child: Column(
      children: [
        Text(
          'طريق عن دخول تسجيل',
          style: TextStyle(fontSize: 15.0.sp, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 20.0.h,
        ),
        GestureDetector(
          onTap: () {
            print('googleLogin');
          },
          child: Container(
            width: 320.w,
            height: 40.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0.r),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('التسجبل عن طريق جوجل '),
                SizedBox(
                  width: 5.0.w,
                ),
                Image(
                  height: 25.0.h,
                  image: AssetImage(
                    'assets/images/google.png',
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20.0.h,
        ),
        GestureDetector(
          onTap: () {
            print('facebookLogin');
          },
          child: Container(
            width: 320.w,
            height: 40.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0.r),
              color: MyColors.bgFacebook,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'التسجبل عن طريق فيس بوك ',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 5.0.w,
                ),
                Image(
                  height: 30.0.h,
                  image: AssetImage(
                    'assets/images/facebook.png',
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    ),
  );
}
