import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riadiat/constants/my_color.dart';
import 'package:riadiat/constants/strings.dart';
import 'package:riadiat/features/widgets/custom_text_form_field.dart';

class AccountSetting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'اعدادات الحساب',
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
          child: Padding(
            padding: EdgeInsets.only(right: 20.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.0.h,
                ),
                Text(
                  'البريد الالكترونى',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 5.0.h,
                ),
                CustomFromField(
                  hintText: "ola@gmail.com",
                  suffix: Padding(
                    padding: EdgeInsets.only(top: 10.0.h),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, changeEmailScreen);
                      },
                      child: Text(
                        "تعديل",
                        style: TextStyle(
                          color: MyColors.meanColor,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.0.h,
                ),
                Text(
                  'رقم المرور',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 5.0.h,
                ),
                CustomFromField(
                  hintText: "رقم المرور الحالى",
                ),
                SizedBox(
                  height: 20.0.h,
                ),
                CustomFromField(
                  hintText: "رقم المرور الجديد",
                ),
                SizedBox(
                  height: 20.0.h,
                ),
                CustomFromField(
                  hintText: " رقم المرور الجديد مره اخرى",
                ),
                SizedBox(
                  height: 40.0.h,
                ),
                GestureDetector(
                  onTap: () {
                    print('change password');
                  },
                  child: Container(
                    width: 200.w,
                    height: 40.0.h,
                    decoration: BoxDecoration(
                      color: MyColors.meanColor,
                      borderRadius: BorderRadius.circular(5.0.r),
                    ),
                    child: Center(
                      child: Text(
                        'تغير كلمه المرور',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0.sp,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0.h,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      deleteAccountScreen,
                    );
                  },
                  child: Text(
                    'حذف الحساب',
                    style: TextStyle(
                      fontSize: 15.0.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.red,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
