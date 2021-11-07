import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:riadiat/constants/my_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riadiat/constants/strings.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                        radius: 40.r,
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
                    print('training');
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
                        top: 10.0.h,
                        right: 10.0.w,
                      ),
                      child: Text(
                        'دوراتي',
                        style: TextStyle(
                          fontSize: 15.0.sp,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0.h,
                ),
                GestureDetector(
                  onTap: () {
                    print('training');
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
                        top: 10.0.h,
                        right: 10.0.w,
                      ),
                      child: Text(
                        'جلسات الاستشاره',
                        style: TextStyle(
                          fontSize: 15.0.sp,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0.h,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(personalAccountScreen);
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
                        top: 10.0.h,
                        right: 10.0.w,
                      ),
                      child: Text(
                        'الصفحه الشخصيه',
                        style: TextStyle(
                          fontSize: 15.0.sp,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0.h,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(accountSetting);
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
                        top: 10.0.h,
                        right: 10.0.w,
                      ),
                      child: Text(
                        'اعدادات الحساب',
                        style: TextStyle(
                          fontSize: 15.0.sp,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0.h,
                ),
                Container(
                  height: 1,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                  ),
                ),
                SizedBox(
                  height: 30.0.h,
                ),
                GestureDetector(
                  onTap: () {
                    print('training');
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
                        top: 10.0.h,
                        right: 10.0.w,
                      ),
                      child: Text(
                        'كونى مدربه',
                        style: TextStyle(
                          fontSize: 15.0.sp,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0.h,
                ),
                GestureDetector(
                  onTap: () {
                    print('training');
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
                        top: 10.0.h,
                        right: 10.0.w,
                      ),
                      child: Text(
                        'كونى شريكه (معلنه)',
                        style: TextStyle(
                          fontSize: 15.0.sp,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0.h,
                ),
                GestureDetector(
                  onTap: () {
                    print('training');
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
                        top: 10.0.h,
                        right: 10.0.w,
                      ),
                      child: Text(
                        'كونى مستشاره',
                        style: TextStyle(
                          fontSize: 15.0.sp,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0.h,
                ),
                Container(
                  height: 1,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                  ),
                ),
                SizedBox(
                  height: 30.0.h,
                ),
                GestureDetector(
                  onTap: () {
                    print('logout');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        MdiIcons.logout,
                        color: MyColors.logoutIcon,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        "تسجيل الخروج",
                        style: TextStyle(
                          fontSize: 15.0.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.0.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
