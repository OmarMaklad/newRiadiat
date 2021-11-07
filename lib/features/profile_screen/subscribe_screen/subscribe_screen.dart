import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riadiat/constants/my_color.dart';
import 'package:riadiat/constants/strings.dart';

class SubScribeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'اشتراكاتى',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'الاكاديميه العامه',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18.sp,
                          ),
                        ),
                        SizedBox(
                          width: 5.0.w,
                        ),
                        Text(
                          'شهرى',
                          style: TextStyle(
                              fontSize: 14.0.sp, color: Colors.black26),
                        )
                      ],
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top: 8.0.h),
                      child: GestureDetector(
                        onTap: () {
                         Navigator.pushNamed(context, cancelSubscribeScreen);
                        },
                        child: Text(
                          'الغاء الاشتراك',
                          style: TextStyle(color: MyColors.meanColor),
                        ),
                      ),
                    ),
                  ],
                ),
                subtitle: Text(
                  'تاريخ التجديد 5/7/2021',
                  style: TextStyle(fontSize: 12.0.sp, color: Colors.black26),
                ),
              ),
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'الاكاديميه المتخصصه',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18.sp,
                          ),
                        ),
                        SizedBox(
                          width: 5.0.w,
                        ),
                        Text(
                          'سنوى',
                          style: TextStyle(
                              fontSize: 14.0.sp, color: Colors.black26),
                        )
                      ],
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top: 8.0.h),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, cancelSubscribeScreen);
                        },
                        child: Text(
                          'الغاء الاشتراك',
                          style: TextStyle(color: MyColors.meanColor),
                        ),
                      ),
                    ),
                  ],
                ),
                subtitle: Text(
                  'تاريخ التجديد 5/7/2021',
                  style: TextStyle(fontSize: 12.0.sp, color: Colors.black26),
                ),
              ),
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'الشبكه',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18.sp,
                          ),
                        ),
                        SizedBox(
                          width: 5.0.w,
                        ),
                        Text(
                          'مستثمر-سنوى',
                          style: TextStyle(
                              fontSize: 14.0.sp, color: Colors.black26),
                        )
                      ],
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top: 8.0.h),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, cancelSubscribeScreen);
                        },
                        child: Text(
                          'الغاء الاشتراك',
                          style: TextStyle(color: MyColors.meanColor),
                        ),
                      ),
                    ),
                  ],
                ),
                subtitle: Text(
                  'تاريخ التجديد 5/7/2021',
                  style: TextStyle(fontSize: 12.0.sp, color: Colors.black26),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
