import 'package:flutter/material.dart';
import 'package:riadiat/constants/my_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class SearchFormField extends StatelessWidget {
  final Function()? onPressSearch;
  final Function(String)? onChange;
  final String? hintText;
  SearchFormField({
    this.onPressSearch,
    this.onChange,
    this.hintText,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 235.w,
      child: TextField(
        onChanged: onChange,
        decoration: InputDecoration(
          prefixIcon: IconButton(
            icon: Icon(Icons.search_outlined),
            onPressed: onPressSearch,
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            color: MyColors.searchHintText,
            fontSize: 11.0.sp,
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 20),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide:
              BorderSide(color: MyColors.borderInputColor, width: 1)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide:
              BorderSide(color: MyColors.borderInputColor, width: 1)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide:
              BorderSide(color: MyColors.borderInputColor, width: 1)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide:
              BorderSide(color: MyColors.borderInputColor, width: 1)),
        ),
      ),
    );
  }
}
