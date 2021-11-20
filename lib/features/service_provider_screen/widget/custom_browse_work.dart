import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riadiat/constants/my_color.dart';

import 'custom_text.dart';
import 'cutom_bottom.dart';
Widget customBrowseWork(){
  return ListView.builder(
    itemCount: 3,
    itemBuilder: (context, index) {
      return Column(
        children: [
          Container(
            height: 180.h,
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 8.0,
                    right: 8.0,
                    top: 8.0,
                  ),
                  child: Row(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 30.r,
                        backgroundImage: NetworkImage(
                          "https://www.cibeg.com/-/media/project/cib/text-and-images/personal/ways-to-bank/online-banking/text-and-image---ways-to-bank---online-banking---day-to-day-banking-transactions.jpg",
                        ),
                      ),
                      Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: [
                          customText(
                            text: 'تصميم داخلي لغرفة ازياء',
                            color: MyColors.black,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                          ),
                          customText(
                            text: 'علا مصطفي',
                            color: MyColors.black,
                            fontSize: 15.sp,
                          ),
                        ],
                      ),
                      Spacer(),
                      customText(
                        text: '120 ريال',
                        color: MyColors.black,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 40.h,
                  width: 250.w,
                  child: customText(
                      text:
                      'حصلت على بكالوريوس الحاسبات و المعلومات، خبرة 5 سنوات في ريادة الأعمال، حصلت على جوائز عديدة ولها شركات ناجحة في المملكه وخارجها',
                      color: MyColors.black,
                      fontSize: 14.sp,
                      maxLines: 2),
                ),
                SizedBox(height: 15.0.h),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 8.0,
                    right: 8.0,
                    top: 8.0,
                  ),
                  child: Row(
                    children: [
                      customBottom(
                        backGroundColor: MyColors.meanColor,
                        textColor: MyColors.white,
                        onTap: () {},
                        text: 'أقبل العرض',),
                      const SizedBox(width: 10,),
                      customBottom(
                        backGroundColor: MyColors.white,
                        textColor: MyColors.meanColor,
                        onTap: () {},
                        text: 'أرفض العرض',),
                      Spacer(),
                      Icon(Icons.watch_later_outlined),
                      const SizedBox(width: 5,),
                      customText(
                          text:'منذ 12 دقيقه',
                          color: MyColors.black,
                          fontSize: 12.sp,
                          maxLines: 2),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 1,
            color: Colors.black26,
          )
        ],
      );
    },
  );
}