import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:riadiat/constants/my_color.dart';
import 'package:riadiat/constants/strings.dart';

class PersonalAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'حسابى الشخصى',
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
              SizedBox(
                height: 30.0.h,
              ),
              Container(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 60.r,
                      backgroundColor: MyColors.meanColor,
                      backgroundImage: NetworkImage(
                        "https://www.cibeg.com/-/media/project/cib/text-and-images/personal/ways-to-bank/online-banking/text-and-image---ways-to-bank---online-banking---day-to-day-banking-transactions.jpg",
                      ),
                    ),
                    SizedBox(
                      height: 10.0.h,
                    ),
                    Text(
                      'علا مصطفى',
                      style: TextStyle(
                        fontSize: 18.0.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'رائد الاعمال',
                      style: TextStyle(
                        fontSize: 14.0.sp,
                        color: Colors.black45,
                        height: 0.9.h,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.0.h,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, downloadScreen);
                },
                child: Container(
                  width: 330.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.grey.withOpacity(0.02),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 4.0.h,
                      right: 10.0.w,
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.arrow_circle_down),
                        SizedBox(
                          width: 6.0.w,
                        ),
                        Text(
                          'التحميلات',
                          style: TextStyle(
                            fontSize: 15.0.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0.h,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, favoriteScreen);
                },
                child: Container(
                  width: 330.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.grey.withOpacity(0.02),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 4.0.h,
                      right: 10.0.w,
                    ),
                    child: Row(
                      children: [
                        Icon(MdiIcons.heartOutline),
                        SizedBox(
                          width: 6.0.w,
                        ),
                        Text(
                          'المفضله',
                          style: TextStyle(
                            fontSize: 15.0.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0.h,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, paymentCardScreen);
                },
                child: Container(
                  width: 330.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.grey.withOpacity(0.02),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 4.0.h,
                      right: 10.0.w,
                    ),
                    child: Row(
                      children: [
                        Icon(MdiIcons.cardOutline),
                        SizedBox(
                          width: 6.0.w,
                        ),
                        Text(
                          'بطاقات الدفع',
                          style: TextStyle(
                            fontSize: 15.0.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0.h,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, personalDataEdit);
                },
                child: Container(
                  width: 330.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.grey.withOpacity(0.02),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 4.0.h,
                      right: 10.0.w,
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.settings_outlined),
                        SizedBox(
                          width: 6.0.w,
                        ),
                        Text(
                          'تعديل البيانات الشخصيه ',
                          style: TextStyle(
                            fontSize: 15.0.sp,
                          ),
                        ),
                        SizedBox(
                          width: 53.0.w,
                        ),
                        GestureDetector(
                          onTap: () {
                            print('join network');
                          },
                          child: Text(
                            'انضمى الى الشبكه',
                            style: TextStyle(
                              fontSize: 14.0.sp,
                              color: MyColors.meanColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0.h,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(notificationSetting);
                },
                child: Container(
                  width: 330.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.grey.withOpacity(0.02),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 4.0.h,
                      right: 10.0.w,
                    ),
                    child: Row(
                      children: [
                        Icon(MdiIcons.notificationClearAll),
                        SizedBox(
                          width: 6.0.w,
                        ),
                        Text(
                          'الاشعارات',
                          style: TextStyle(
                            fontSize: 15.0.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0.h,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, subscribeScreen);
                },
                child: Container(
                  width: 330.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.grey.withOpacity(0.02),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 4.0.h,
                      right: 10.0.w,
                    ),
                    child: Row(
                      children: [
                        Icon(MdiIcons.cursorDefaultClick),
                        SizedBox(
                          width: 6.0.w,
                        ),
                        Text(
                          'اشتراكاتى',
                          style: TextStyle(
                            fontSize: 15.0.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
