import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:riadiat/constants/my_color.dart';
import 'package:riadiat/constants/strings.dart';

import 'custom_text.dart';
Widget customWorkList(){
  return  ListView.builder(
    itemCount: 5,
    itemBuilder: (context, index) {
      return GestureDetector(
        onTap: (){
          Navigator.pushNamed(context, workDetailsScreen);
        },
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Stack(
            children: [
              Container(
                height: 170.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0.r),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                      "https://image.freepik.com/free-vector/dark-paper-layers-wallpaper-with-golden-details_23-2148403401.jpg",
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 5.h,
                right: 10.w,
                left: 10.w,
                child: Row(
                  children: [
                    customText(
                      color: MyColors.white,
                      text: '122',
                      fontSize: 15.sp,
                    ),
                    const SizedBox(width: 5,),
                    Icon(
                      MdiIcons.eyeOutline,
                      size: 40,
                      color: Colors.white,
                    ),
                    Spacer(),
                    customText(
                      color: MyColors.white,
                      text: 'A remote design spirit ',
                      fontSize: 14.sp,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}