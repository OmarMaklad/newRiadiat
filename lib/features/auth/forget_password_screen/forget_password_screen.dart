import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riadiat/constants/strings.dart';
import 'package:riadiat/features/widgets/custom_large_button.dart';
import 'package:riadiat/features/widgets/custom_text_form_field.dart';

class ForgetPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'نسيت كلمه المرور',
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
                height: 50.0,
              ),
              Image(
                width: 200.w,
                height: 100.0.h,
                image: AssetImage('assets/images/logo.png'),
              ),
              SizedBox(
                height: 30.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('ادخلى بريدك الالكترونى لكى يصلك رمز التحقق'),
                  SizedBox(
                    height: 10.0,
                  ),
                  CustomFromField(
                    hintText: 'البريد الالكترونى ',
                  )
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              customLargeButton(
                context: context,
                name: 'تاكيد',
                onTap: () {
                  Navigator.pushNamed(context, verificationCodeScreen);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
