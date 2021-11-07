import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riadiat/constants/my_color.dart';
import 'package:riadiat/features/widgets/custom_text_form_field.dart';


enum CancelInfo {
  notNeed,
  notLike,
  anotherPlan,
  costHeight,
  other,
}

class CancelSubscribeScreen extends StatefulWidget {


  @override
  State<CancelSubscribeScreen> createState() => _CancelSubscribeScreenState();
}

class _CancelSubscribeScreenState extends State<CancelSubscribeScreen> {
  CancelInfo? cancelInfo = CancelInfo.other;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'الغاء الاشتراك',
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
            padding: EdgeInsets.only(right: 20.0.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.0.h,
                ),
                Text('رغبتك فى حذف الحساب حتى نتمكن من تحسين المنصه'),
                Text('يوسفنا ذلك ويرجى اعلامنا بذلك'),
                Row(
                  children: [
                    SizedBox(
                      width: 40.0.w,
                      child: Radio<CancelInfo>(
                          value: CancelInfo.notNeed,
                          groupValue: cancelInfo,
                          onChanged: (CancelInfo? value) {
                            print(value);
                            setState(() {
                              cancelInfo = value;
                            });
                          }),
                    ),
                    Text(
                      'لم اعد احتاجه',
                      style: TextStyle(
                        fontSize: 15.0.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 40.0.w,
                      child: Radio<CancelInfo>(
                          value: CancelInfo.notLike,
                          groupValue: cancelInfo,
                          onChanged: (CancelInfo? value) {
                            print(value);
                            setState(() {
                              cancelInfo = value;
                            });
                          }),
                    ),
                    Text(
                      'المحتوى لا يعجبنى',
                      style: TextStyle(
                        fontSize: 15.0.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 40.0.w,
                      child: Radio<CancelInfo>(
                          value: CancelInfo.anotherPlan,
                          groupValue: cancelInfo,
                          onChanged: (CancelInfo? value) {
                            print(value);
                            setState(() {
                              cancelInfo = value;
                            });
                          }),
                    ),
                    Text(
                      'لدى خطه اخرى',
                      style: TextStyle(
                        fontSize: 15.0.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 40.0.w,
                      child: Radio<CancelInfo>(
                          value: CancelInfo.costHeight,
                          groupValue: cancelInfo,
                          onChanged: (CancelInfo? value) {
                            print(value);
                            setState(() {
                              cancelInfo = value;
                            });
                          }),
                    ),
                    Text(
                      'التكلفه باهظه',
                      style: TextStyle(
                        fontSize: 15.0.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 40.0.w,
                      child: Radio<CancelInfo>(
                          value: CancelInfo.other,
                          groupValue: cancelInfo,
                          onChanged: (CancelInfo? value) {
                            print(value);
                            setState(() {
                              cancelInfo = value;
                            });
                          }),
                    ),
                    Text(
                      'اخرى',
                      style: TextStyle(
                        fontSize: 15.0.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8.0.h,
                ),
                CustomFromField(
                  hintText: "سبب اخر",
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 30.0.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                print('delete account');
              },
              child: Container(
                width: 150.0.w,
                height: 40.0.h,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(5.0.r),
                ),
                child: Center(
                  child: Text(
                    'الغاء الاشتراك',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 20.0.w,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: 150.0.w,
                height: 40.0.h,
                decoration: BoxDecoration(
                  border: Border.all(color: MyColors.meanColor),
                  borderRadius: BorderRadius.circular(5.0.r),
                ),
                child: Center(
                  child: Text(
                    'الرجوع',
                    style: TextStyle(
                      color: MyColors.meanColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
