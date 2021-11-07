import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riadiat/constants/my_color.dart';
import 'package:riadiat/constants/strings.dart';
import 'package:riadiat/features/message_screen/chat_screen.dart';

Widget customNewChat({
  BuildContext? context,
}) {
  return SingleChildScrollView(
    child: Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 20.0.w),
            child: Text('الرسائل(2)'),
          ),
          SizedBox(
            height: 10.0.h,
          ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  ListTile(
                    onTap: (){
                      Navigator.pushNamed(context, chatScreen);
                    },
                    leading: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        CircleAvatar(
                          radius: 20.r,
                          backgroundImage: NetworkImage(
                            "https://www.cibeg.com/-/media/project/cib/text-and-images/personal/ways-to-bank/online-banking/text-and-image---ways-to-bank---online-banking---day-to-day-banking-transactions.jpg",
                          ),
                        ),
                        Positioned(
                          bottom: 3.0.h,
                          left: 1.0.w,
                          child: Container(
                            width: 8.w,
                            height: 8.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.r),
                              border: Border.all(
                                width: 1,
                                color: Colors.white,
                              ),
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ],
                    ),
                    title: Text(
                      'علا مصطفى',
                      style: TextStyle(
                        fontSize: 15.0.sp,
                      ),
                    ),
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('نعم هذا صحيح'),
                        Text('مساء19:8'),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.0.w),
                    height: 1,
                    color: MyColors.borderUnderChat,
                  )
                ],
              );
            },
          ),
          SizedBox(
            height: 40.0.h,
          ),
        ],
      ),
    ),
  );
}
