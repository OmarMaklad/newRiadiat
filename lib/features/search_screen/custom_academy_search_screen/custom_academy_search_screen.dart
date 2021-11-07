import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AcademySearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Padding(
          padding: EdgeInsets.only(right: 10.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('الاكاديميه (10)'),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(top: 3.h, bottom: 17.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: 120.w,
                              height: 100.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0..r),
                                color: Colors.green,
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5.0.r),
                                child: Image(
                                  width: 120,
                                  height: 100,
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                      'https://images.unsplash.com/photo-1611095566888-f1446042c8fc?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80'),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 35.0.w,
                              right: 45.0.h,
                              child: Icon(
                                Icons.play_circle_outline,
                                size: 40.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 8.0.h,
                            right: 8.0.w,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'خطه العمل ودراسه الجدوى الماليه',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                   fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                'علا مصطفى',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                     fontSize: 10.0.sp,
                                     color: Colors.black45,
                                ),
                              ),
                              Text(
                                '50 ريال',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 10.0.sp,
                                  color: Colors.black45,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
