import 'package:flutter/material.dart';
import 'package:riadiat/constants/my_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riadiat/features/my_course_screen/widget/custom_title_meeting.dart';

Widget meetingTab({BuildContext? context}) {
  return SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        customTitleMeeting(context: context, title: "قادمه",),
        SizedBox(height: 8.0.h,),
        Container(
          height: 150.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(right: 15.w, left: 5.w),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: MyColors.borderInputColor,
                        borderRadius: BorderRadius.circular(5.0.r),
                      ),
                      width: 250.w,
                      height: 150.h,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5.0.r),
                        child: Image(
                          width: 250.w,
                          height: 150.h,
                          fit: BoxFit.fill,
                          image: NetworkImage(
                            'https://images.unsplash.com/photo-1611095566888-f1446042c8fc?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80',
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 8.0.w,
                      bottom: 10.h,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                '23 يوليو - 30 اكتوبر | 2.30 ص ',
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                'خطه العمل ودراسه الجدول الماليه',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          SizedBox(width: 30.0.w,),
                          Padding(
                            padding:  EdgeInsets.only(top: 10.0.h),
                            child: Icon(
                              Icons.play_circle_outline,
                              size: 40.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        SizedBox(height: 20.0.h,),
        customBorderGray(context: context),
        SizedBox(height: 8.0.h,),
        customTitleMeeting(context: context, title: "اليوم تحدث",),
        Container(
          height: 150.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(right: 15.w, left: 5.w),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: MyColors.borderInputColor,
                        borderRadius: BorderRadius.circular(5.0.r),
                      ),
                      width: 250.w,
                      height: 150.h,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5.0.r),
                        child: Image(
                          width: 250.w,
                          height: 150.h,
                          fit: BoxFit.fill,
                          image: NetworkImage(
                            'https://images.unsplash.com/photo-1611095566888-f1446042c8fc?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80',
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 8.0.w,
                      bottom: 10.h,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                '23 يوليو - 30 اكتوبر | 2.30 ص ',
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                'خطه العمل ودراسه الجدول الماليه',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          SizedBox(width: 30.0.w,),
                          Padding(
                            padding:  EdgeInsets.only(top: 10.0.h),
                            child: Icon(
                              Icons.play_circle_outline,
                              size: 40.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        SizedBox(height: 20.0.h,),
        customBorderGray(context: context),
        SizedBox(height: 8.0.h,),
        customTitleMeeting(context: context, title: "انتهت",),
        SizedBox(height: 8.0.h,),
        Container(
          height: 150.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(right: 15.w, left: 5.w),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: MyColors.borderInputColor,
                        borderRadius: BorderRadius.circular(5.0.r),
                      ),
                      width: 250.w,
                      height: 150.h,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5.0.r),
                        child: Image(
                          width: 250.w,
                          height: 150.h,
                          fit: BoxFit.fill,
                          image: NetworkImage(
                            'https://images.unsplash.com/photo-1611095566888-f1446042c8fc?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80',
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 8.0.w,
                      bottom: 10.h,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                '23 يوليو - 30 اكتوبر | 2.30 ص ',
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                'خطه العمل ودراسه الجدول الماليه',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          SizedBox(width: 30.0.w,),
                          Padding(
                            padding:  EdgeInsets.only(top: 10.0.h),
                            child: Icon(
                              Icons.play_circle_outline,
                              size: 40.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        SizedBox(height: 20.0.h,),
      ],
    ),
  );
}

Widget customBorderGray({BuildContext? context}){
  return Container(
     width: double.infinity,
     height: 10.h,
     color: MyColors.dividerColor,
  );
}
