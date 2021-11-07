import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riadiat/constants/my_color.dart';
import 'package:riadiat/features/widgets/custom_large_button.dart';
import 'package:riadiat/features/widgets/custom_text_form_field.dart';

class EditOrDeleteCardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'تعديل اوحذف البطاقه',
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
                height: 20.0.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 40.0.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image(
                      width: 30.0.w,
                      height: 20.0.h,
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          'https://i.pinimg.com/280x280_RS/06/a5/4e/06a54e9dca0956825ed00d793231bb46.jpg'),
                    ),
                    SizedBox(
                      width: 5.0.w,
                    ),
                    Image(
                      width: 30.0.w,
                      height: 20.0.h,
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          'https://pbs.twimg.com/profile_images/753764362079334401/k_Hji2Hf_400x400.jpg'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0.h,
              ),
              CustomFromField(
                hintText: "الاسم على البطاقه",
              ),
              SizedBox(
                height: 20.0.h,
              ),
              CustomFromField(
                hintText: "الرقم على البطاقه",
              ),
              SizedBox(
                height: 20.0.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 150.0.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomFromField(
                          hintText: "تاريخ الصلاحيه",
                        ),
                        Text(
                          'على نمط شهر /سنه',
                          style: TextStyle(color: Colors.black26),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20.0.h,
                  ),
                  Container(
                    width: 150.0.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomFromField(
                          hintText: "تاريخ الصلاحيه",
                        ),
                        Text(
                          'على نمط شهر /سنه',
                          style: TextStyle(color: Colors.black26),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
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
                  color: MyColors.meanColor,
                  borderRadius: BorderRadius.circular(5.0.r),
                ),
                child: Center(
                  child: Text(
                    'حفظ',
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
                print('delete card');
              },
              child: Container(
                width: 150.0.w,
                height: 40.0.h,
                child: Center(
                  child: Text(
                    'حذف البطاقه',
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
