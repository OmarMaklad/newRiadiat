import 'package:flutter/cupertino.dart';
import 'package:riadiat/constants/my_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget titleRow({
  BuildContext? context,
  String? title,
  Function()? onTap,
  String? showAll,
}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 20.w),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title!,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            showAll!,
            style: TextStyle(
              color: MyColors.seeAllColor,
            ),
          ),
        ),
      ],
    ),
  );
}
