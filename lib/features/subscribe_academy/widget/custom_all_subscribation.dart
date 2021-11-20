import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riadiat/features/widgets/custom_button_mean_color.dart';

Widget customColumn({
  BuildContext? context,
  String? title,
  String? description,
  String? description1,
  String? description2,
  String? description3,
  Function()? onTap,
}) {
  return Padding(
    padding: EdgeInsets.only(
      top: 10.h,
      right: 20.0.w,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title!,
          style: TextStyle(fontSize: 20.0.sp),
        ),
        Row(
          children: [
            Text(
              '400',
              style: TextStyle(fontSize: 20.0.sp),
            ),
            SizedBox(
              width: 4.0.w,
            ),
            Text(
              'ريال',
              style: TextStyle(fontSize: 14.0.sp),
            ),
          ],
        ),
        SizedBox(
          height: 30.0.h,
        ),
        customRow(
          context: context,
          textCheck: description,
        ),
        SizedBox(
          height: 10.0.h,
        ),
        customRow(
          context: context,
          textCheck: description1,
        ),
        SizedBox(
          height: 10.0.h,
        ),
        customRow(
          context: context,
          textCheck: description2,
        ),
        SizedBox(
          height: 10.0.h,
        ),
        customRow(
          context: context,
          textCheck: description3,
        ),
        SizedBox(
          height: 20.0.h,
        ),
        customButtonMeanColor(
            context: context, title: "اشتركى الان", onTap: onTap),
      ],
    ),
  );
}

Widget customRow({
  BuildContext? context,
  String? textCheck,
}) {
  return Row(
    children: [
      Icon(Icons.check),
      SizedBox(
        width: 10.0.w,
      ),
      Text(textCheck!)
    ],
  );
}

Widget customContainerColors({
  BuildContext? context,
  Color? color,
}) {
  return Container(
    width: double.infinity,
    height: 15.0.h,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(5.0.r),
    ),
  );
}

Widget customContainerWithShadow({
  BuildContext? context,
  Widget? child,
  Color? color,
}) {
  return Column(
    children: [
      customContainerColors(
        context: context,
        color: color,
      ),
      Container(
        width: double.infinity,
        height: 300.0.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(5.0.r),
            bottomRight: Radius.circular(5.0.r),
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0,
              blurRadius: 0.5,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: child,
      ),
    ],
  );
}
