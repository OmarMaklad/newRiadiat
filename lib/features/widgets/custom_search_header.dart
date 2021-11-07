import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riadiat/features/main_screen/widget/custom_search_form.dart';

Widget searchingHeader({
  BuildContext? context,
  Icon? iconLeft,
  Function()? onTapRight,
  Icon?  iconsRight,
  Function()? onTapLeft,
  String? hintText,
  Function(String)? onChange,
  Function()? onPressed,
}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 20.w),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: onTapRight,
          child: iconsRight,
        ),
        SizedBox(
          width: 10.w,
        ),
        SearchFormField(
          hintText: hintText,
          onChange: onChange,
          onPressSearch: onPressed,
        ),
        SizedBox(
          width: 10.w,
        ),
        GestureDetector(
          onTap: onTapLeft,
          child: iconLeft,
        ),
      ],
    ),
  );
}
