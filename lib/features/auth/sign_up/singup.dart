import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riadiat/constants/my_color.dart';
import 'package:riadiat/features/auth/widget/cusotm_footer_login.dart';
import 'package:riadiat/features/auth/widget/custom_or_container.dart';
import 'package:riadiat/features/auth/widget/custom_social_login.dart';
import 'package:riadiat/features/widgets/custom_large_button.dart';
import 'package:riadiat/features/widgets/custom_text_form_field.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20.0.h,
                ),
                Text(
                  'انشاء حساب',
                  style:
                  TextStyle(fontSize: 20.0.sp, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20.0.h,
                ),
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
                    CustomFromField(
                      hintText: "الاسم بالكامل",
                    ),
                    SizedBox(
                      height: 20.0.h,
                    ),
                    CustomFromField(
                      hintText: "رقم الجوال",
                    ),
                    SizedBox(
                      height: 20.0.h,
                    ),
                    CustomFromField(
                      hintText: "البريد الالكترونى",
                    ),
                    SizedBox(
                      height: 20.0.h,
                    ),
                    CustomFromField(
                      hintText: "كلمه المرور",
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0.h,
                ),
                SizedBox(
                  child: customLargeButton(
                      name: 'سجل حساب جديد',
                      onTap: () {
                        print('login');
                      }),
                ),
                SizedBox(
                  height: 20.0.h,
                ),
                Container(
                  width: 320.w,
                  child: customOrContainer(context: context),
                ),
                SizedBox(
                  height: 20.0.h,
                ),
                customSocialLogin(context: context),
                SizedBox(
                  height: 20.0.h,
                ),
                customFooterLogin(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  context: context,
                  checkAccount: "لديك حساب",
                  loginOrSignUp: "سجل دخول",
                ),
                SizedBox(
                  height: 40.0.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
