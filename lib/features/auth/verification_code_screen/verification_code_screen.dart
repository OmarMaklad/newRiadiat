import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riadiat/constants/strings.dart';
import 'package:riadiat/features/widgets/custom_large_button.dart';
import 'package:riadiat/features/widgets/custom_text_form_field.dart';

class VerificationCodeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'رمز التحقق',
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
                    'التحقق من البريد الالكترونى ',
                    style: TextStyle(
                      fontSize: 15.0.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'تم ارسال رمز التحقق الى zaki@gmail.com',
                    style: TextStyle(
                      fontSize: 13.0.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 30.0.h,
                  ),
                  Container(
                    width: 320.w,
                  )
                ],
              ),
              SizedBox(
                height: 30.0.h,
              ),
              SizedBox(
                child: customLargeButton(
                    context: context,
                    name: 'تاكيد',
                    onTap: () {
                      Navigator.pushNamed(context, designationPasswordScreen);
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
