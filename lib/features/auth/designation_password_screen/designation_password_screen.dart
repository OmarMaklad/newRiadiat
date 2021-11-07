import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riadiat/constants/strings.dart';
import 'package:riadiat/features/widgets/custom_large_button.dart';
import 'package:riadiat/features/widgets/custom_text_form_field.dart';

class DesignationPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'تعين كلمه المرور ',
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
              Image(
                width: 149.w,
                height: 79.h,
                image: AssetImage('assets/images/logo.png'),
              ),
              SizedBox(
                height: 40.0.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'انشاء كلمه مرور جديده',
                    style: TextStyle(
                      fontSize: 15.0.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'كلمه المرور الجديده يجيب ان تكون مختلفه عن القديم',
                    style: TextStyle(
                      fontSize: 13.0.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 30.0.h,
                  ),
                  CustomFromField(hintText: 'كلمه المرور ',),
                  SizedBox(
                    height: 10.0.h,
                  ),
                  CustomFromField(hintText: 'اعاده كلمه المرور',)
                ],
              ),
              SizedBox(
                height: 30.0.h,
              ),
              customLargeButton(context: context, name:  'سجل الدخول',onTap: (){
                Navigator.pushNamed(context, bottomNavigation);
              }),
            ],
          ),
        ),
      ),
    );
  }
}
