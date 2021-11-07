import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riadiat/constants/my_color.dart';

Widget customFooterLogin({
  BuildContext? context,
  String? checkAccount,
  String? loginOrSignUp,
  Function()? onTap,
}) {
  return Column(
    children: [
      Text(checkAccount!),
      SizedBox(
        height: 10.0.h,
      ),
      GestureDetector(
        onTap: onTap,
        child: Text(
          loginOrSignUp!,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0.sp,
            color: MyColors.meanColor,
          ),
        ),
      ),
    ],
  );
}
